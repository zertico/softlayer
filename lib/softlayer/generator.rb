require 'nokogiri'
require 'savon'
require 'active_support/inflector'
require 'softlayer/generator/class_file'
require 'softlayer/generator/converter'
require 'softlayer/generator/data_type'
require 'softlayer/generator/downloader'
require 'softlayer/generator/module_file'
require 'softlayer/generator/service'

module Softlayer
  class Generator

    class << self
      def download
        # services = Downloader.get_services
        FileUtils.mkdir_p('data')
        Downloader.download_xsd
        Downloader.download_wsdl
        Downloader.download_metadata
      end
    end
    
    def runner
      puts "Started #{DateTime.now}"
      DataType.types.each do |klass|
        puts "Go #{klass}..."
        file_name = "lib/" + Converter.type(klass).underscore + ".rb"
        file_directory = File.dirname(file_name)
        FileUtils.mkdir_p file_directory
        content = Softlayer::Generator::ClassFile.new(klass).generate
        File.open(file_name, 'w') { |file| file.write(content) }
        
        needs_parent?(klass)
      end
      puts "Finished #{DateTime.now}"
    end
    
    def needs_parent?(klass)
      return false if klass.match(/\AArray\[/)
      parent_klass = Converter.module_name(klass).deconstantize
      parent_file_name = "lib/" + parent_klass.underscore + ".rb"
      parent_softlayer_name = Converter.to_softlayer_name(parent_klass)

      return false if parent_klass == "Softlayer"

      if DataType.object_type(parent_softlayer_name) == :module && !File.exist?(parent_file_name)
        # write parent module file
        file_directory = File.dirname(parent_file_name)
        FileUtils.mkdir_p file_directory
        content = Softlayer::Generator::ModuleFile.new(parent_softlayer_name).generate
        File.open(parent_file_name, 'w') { |file| file.write(content) }

        # loop to parent
        needs_parent?(parent_softlayer_name)
      end

      false
    end

    def write_parent(klass)
    end

    def is_module?(klass)
    end
  end
end
