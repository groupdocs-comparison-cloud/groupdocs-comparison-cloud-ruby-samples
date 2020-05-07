# Import modules
require './Common.rb'

# This example demonstrates how to compare documents with comparison sensitivity option
class CompareSensitivity
    def self.Run()        
        apiInstance = GroupDocsComparisonCloud::CompareApi.from_config($config)
        source = GroupDocsComparisonCloud::FileInfo.new
        source.file_path = "source_files/word/source.docx"
        target = GroupDocsComparisonCloud::FileInfo.new
        target.file_path = "target_files/word/target.docx"                 
        options = GroupDocsComparisonCloud::ComparisonOptions.new
        options.source_file = source
        options.target_files = [target]
        options.output_path = "output/result.docx"
        settings = GroupDocsComparisonCloud::Settings.new
        settings.sensitivity_of_comparison = 100        
        options.settings = settings

        request = GroupDocsComparisonCloud::ComparisonsRequest.new(options)    
        response = apiInstance.comparisons(request)

        puts("Output file link: " + response.href)
    end
end