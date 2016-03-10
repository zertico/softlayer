require "bundler/gem_tasks"
require "rake/testtask"

namespace :generator do
  desc "Download needed files"
  task :download do
    require 'softlayer'
    require "softlayer/generator"
    Softlayer::Generator.download
  end

  desc "Create model files"
  task :do_your_job => :download do
    require 'softlayer'
    require "softlayer/generator"
    Softlayer::Generator.new.runner
  end
end

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

task :default => :test
