# Import modules
require './Common.rb'

# This example demonstrates how to compare two pdf documents
class ComparePdfDocuments
    def self.Run()        
        apiInstance = GroupDocsComparisonCloud::CompareApi.from_config($config)
        source = GroupDocsComparisonCloud::FileInfo.new
        source.file_path = "source_files/pdf/source.pdf"
        target = GroupDocsComparisonCloud::FileInfo.new
        target.file_path = "target_files/pdf/target.pdf"
        options = GroupDocsComparisonCloud::ComparisonOptions.new
        options.source_file = source
        options.target_files = [target]
        options.output_path = "output/result.pdf"

        request = GroupDocsComparisonCloud::ComparisonsRequest.new(options)    
        response = apiInstance.comparisons(request)

        puts("Output file link: " + response.href)
    end
end