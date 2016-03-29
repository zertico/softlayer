require "codeclimate-test-reporter"

CodeClimate::TestReporter.configure do |config|
  config.logger.level = Logger::WARN
end

CodeClimate::TestReporter.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'softlayer'
require 'softlayer/generator'

require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require 'shoulda/context'
require 'minitest-vcr'
require 'pry'
require 'softlayer/fixtures'
require 'softlayer/mock'

VCR.configure do |c|
  c.cassette_library_dir = 'test/cassettes'
  c.hook_into :excon
  c.filter_sensitive_data('<AUTHENTICATION>') do |interaction|
    interaction.request.body.match(
      /<authenticate><username>[^<]+<\/username><apiKey>[a-f0-9]+<\/apiKey><\/authenticate>/
    )
  end
  c.filter_sensitive_data('<LEGACY_SESSION>') do |interaction|
    interaction.request.body.match(
      /<clientLegacySession><userId>[A-Z0-9]+<\/userId><authToken>[a-f0-9]+<\/authToken><\/clientLegacySession>/
    )
  end
end

MinitestVcr::Spec.configure!

def configure_connection
  Softlayer.reset!
  Softlayer.configure do |config|
    config.username = ENV['SOFTLAYER_API_USERNAME']
    config.api_key = ENV['SOFTLAYER_API_KEY']
  end
end

Softlayer::Fixtures.load
