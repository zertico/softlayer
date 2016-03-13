module Softlayer
  class Client < Savon::Client
    class << self
      def call(method, message = {})
        safe do
          resp = super method, message: message
          resp.to_hash["#{method}_response".to_sym]["#{method}_return".to_sym]
        end
      end
    end

    # Create a new client.
    def initialize(service)
      @service = service
      super client_params
    end

    def call(method, message = {}, hash = nil)
      safe do
        if hash.nil?
          resp = super method, message: message
        else
          resp = super method, message: message, soap_header: hash
        end
        resp.to_hash["#{method}_response".to_sym]["#{method}_return".to_sym]
      end
    end

    private

    # Authorization hash to use with all SOAP requests
    def auth_params
      return {} unless Softlayer.configuration
      auth_hash = {
        authenticate: {
          'username' => Softlayer.configuration.username,
          'apiKey' => Softlayer.configuration.api_key
        }
      }
      auth_hash.merge!({
        "clientLegacySession" =>
          {
            "userId" => Softlayer.configuration.impersonate_user,
            "authToken" => Softlayer.configuration.impersonate_token
          }
      }) if Softlayer.impersonating?
      auth_hash
    end

    def client_params
      { wsdl: "https://api.softlayer.com/soap/v3.1/#{@service}?wsdl" }.tap do |params|
        params[:open_timeout] = Softlayer.configuration.open_timeout if Softlayer.configuration.open_timeout
        params[:read_timeout] = Softlayer.configuration.read_timeout if Softlayer.configuration.read_timeout
        params[:soap_header] = auth_params
      end
    end

    def safe
      yield
    rescue Savon::SOAPFault => e
      raise Softlayer::Errors::SoapError.new(e)
    end
  end
end
