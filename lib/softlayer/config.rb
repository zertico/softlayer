module Softlayer
  class Config
    attr_accessor :username
    attr_accessor :api_key
    attr_accessor :open_timeout
    attr_accessor :read_timeout

    attr_accessor :impersonate_user
    attr_accessor :impersonate_token

    attr_accessor :mock

    def initialize(params = {})
      @username = params[:username] if params[:username]
      @api_key = params[:api_key] if params[:api_key]
      @open_timeout = 5
      @read_timeout = 5
      @mock = false
    end

    # Check the configuration.
    #
    # Will raise a Softlayer::Errors::MissingConfigOption if any of the API login ID or the API key are missing.
    def check!
      fail Softlayer::Errors::MissingConfigOption.new('username') unless username && username.strip.length > 0
      fail Softlayer::Errors::MissingConfigOption.new('api_key') unless api_key && api_key.strip.length > 0
    end

    def mock?
      self.mock
    end
  end
end
