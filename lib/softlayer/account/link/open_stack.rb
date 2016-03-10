module Softlayer
  class Account
    class Link
      class OpenStack < Softlayer::Account::Link
        SERVICE = 'SoftLayer_Account_Link_OpenStack'
        autoload :DomainCreationDetails, 'softlayer/account/link/open_stack/domain_creation_details'
        autoload :LinkRequest, 'softlayer/account/link/open_stack/link_request'
        autoload :ProjectCreationDetails, 'softlayer/account/link/open_stack/project_creation_details'
        autoload :ProjectDetails, 'softlayer/account/link/open_stack/project_details'
        attr_accessor :domain_id

        def self.create_os_domain
          request(:create_os_domain, nil)
        end

        def self.create_os_project
          request(:create_os_project, nil)
        end

        def self.delete_os_domain
          request(:delete_os_domain, nil)
        end

        def self.delete_os_project
          request(:delete_os_project, nil)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def self.get_os_project
          request(:get_os_project, nil)
        end

        def get_object
          request(:get_object, Softlayer::Account::Link::OpenStack)
        end

        def get_service_provider
          request(:get_service_provider, Softlayer::Service::Provider)
        end

        def self.list_os_projects
          request(:list_os_projects, nil)
        end

        class Representer < Softlayer::Account::Link::Representer
          include Representable::Hash
          include Representable::Coercion
          property :domain_id, type: String
        end
      end
    end
  end
end
