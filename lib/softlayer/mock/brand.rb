module Softlayer
  class Mock
    class Brand < Softlayer::Mock
      def get_token(user_id)
        users = $database["Softlayer::User::Customer"]
        users.each do |id,user|
          if user.id == user_id
            return user.authentication_token.hash
          end
        end
      end

      def self.create_object(attrs)
        brand = add_attributes(attrs)
        save_on_database(brand.key_name, brand)
      end

      def get_users
        return_objects = []
        $database["Softlayer::User::Customer"].select { |k,v| return_objects.push(v) }
        return_objects
      end

      def get_hardware
      end
    end
  end
end
