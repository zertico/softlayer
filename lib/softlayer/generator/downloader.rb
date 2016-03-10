module Softlayer
  class Generator
    class Downloader
      def self.get_services
        html_doc = Nokogiri::HTML(self.download_services)
        services = []
        html_doc.css("#block-views-new_Services-block_1 > div > div > div.view-content > div.views-row > div > span > a").each do |service|
          services << service.content
        end
        services
      end

      def self.download_services
        return File.read('./data/.services_cache') if File.exist?('./data/.services_cache')
        page_content = open('http://sldn.softlayer.com/reference/services/SoftLayer_Brand').read
        File.write('./data/.services_cache', page_content)
        page_content
      end

      def self.download_wsdl
        get_services.each do |service|
          unless File.exist?("./data/#{service}.wsdl")
            wsdl_content = open("https://api.softlayer.com/soap/v3/SoftLayer_#{service}?wsdl").read
            File.write("./data/#{service}.wsdl", wsdl_content)
          end
        end
      end

      def self.download_xsd
        unless File.exist?("./data/types.xsd")
          xsd_content = open("https://api.softlayer.com/soap/v3/SoftLayer_Account?xsd").read
          File.write("./data/types.xsd", xsd_content)
        end
      end

      def self.download_metadata
        unless File.exist?("./data/metadata.json")
          metadata_content = open("https://api.softlayer.com/metadata/v3.1").read
          File.write("./data/metadata.json", metadata_content)
        end
      end
    end
  end
end