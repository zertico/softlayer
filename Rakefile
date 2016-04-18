require "bundler/gem_tasks"
require "rake/testtask"

namespace :generator do
  desc "Download needed files"
  task :download do
    require "softlayer/generator"
    Softlayer::Generator.download
  end

  desc "Create model files"
  task :do_your_job => :download do
    core_files = %w(
      version.rb generator generator.rb model.rb big_decimal.rb boolean.rb client.rb
      config.rb errors.rb fixtures.rb float.rb mock.rb errors mock model
    )
    require "softlayer/generator"
    lib_folder = File.join(File.expand_path(File.dirname(__FILE__)), 'lib', 'softlayer')
    FileUtils.rm_rf lib_folder
    core_files.each do |file|
      system("git checkout -- #{File.join(lib_folder, file)}")
    end
    Softlayer::Generator.new.runner
  end
end

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

task :default => :test
