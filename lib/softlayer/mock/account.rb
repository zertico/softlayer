module Softlayer
  class Mock
    class Account < Softlayer::Mock
      def self.get_object
        obj = find(Softlayer.configuration.impersonate_user)
        return obj if !obj.nil?
        find_by_key(Softlayer.configuration.username)
      end

      def self.find(master_user_id)
        $database[get_class_from_return_object].each do |key,obj|
          return obj if obj.master_user.id == master_user_id
        end
        nil
      end

      def self.get_owned_brands
        get_relation('Softlayer::Brand','id','brand_id')
      end

      def self.get_domains
        get_relation('Softlayer::Dns::Domain','account','itself')
      end

      def self.get_users
        get_relation('Softlayer::User::Customer','account_id','id')
      end

      def self.get_tickets
        get_relation('Softlayer::Ticket','account_id','id')
      end

      def self.get_master_user
        get_users.select { |user| user.account_id == get_object.id && user.parent_id == nil }.first
      end

      def self.get_account_status
        get_relation('Softlayer::Account::Status','id','account_status_id').first
      end

      def self.get_relation(relation_name,attr,attr_relation)
        return_objects = []
        $database[relation_name].select { |key,obj| return_objects.push(obj) if obj.send(attr) == get_object.send(attr_relation) }
        return_objects
      end
    end
  end
end
