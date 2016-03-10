require 'test_helper'

describe Softlayer::Config do
  it "error for null api username" do
    Proc.new { subject.class.new(api_key: 'foo').check! }.must_raise Softlayer::Errors::MissingConfigOption
  end

  it "error for null api key" do
    Proc.new { subject.class.new(username: 'foo').check! }.must_raise Softlayer::Errors::MissingConfigOption
  end

  it "has default values" do
    subject.open_timeout.must_equal 5
    subject.read_timeout.must_equal 5
  end

  it "mock default is false" do
    subject.class.new(username: 'foo').mock?.must_equal false
  end
end
