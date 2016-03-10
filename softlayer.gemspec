# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'softlayer/version'

Gem::Specification.new do |spec|
  spec.name          = "softlayer"
  spec.version       = Softlayer::VERSION
  spec.authors       = ["Celso Fernandes"]
  spec.email         = ["fernandes@zertico.com"]

  spec.summary       = %q{SoftLayer API Client}
  spec.description   = %q{SoftLayer API Client using SOAP protocoal, supporting all services and models}
  spec.homepage      = "http://github.com/zertico/softlayer"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  spec.add_dependency "excon", "~> 0.45"
  spec.add_dependency "savon", "~> 2.11"
  spec.add_dependency "virtus", "~> 1.0"
  spec.add_dependency "representable", "~> 2.3"
  spec.add_dependency 'hashie', '~> 3.4'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "minitest-vcr"
  spec.add_development_dependency "shoulda-context"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "wasabi"
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "codeclimate-test-reporter"
end
