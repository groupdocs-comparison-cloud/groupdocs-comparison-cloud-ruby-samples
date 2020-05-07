# Import modules
require './Common.rb'

# This example demonstrates how to compare two password-protected documents
class CompareProtectedDocuments
    def self.Run()        
        apiInstance = GroupDocsComparisonCloud::CompareApi.from_config($config)
        source = GroupDocsComparisonCloud::FileInfo.new
        source.file_path = "source_files/word/source_protected.docx"
        source.password = "1231"
        target = GroupDocsComparisonCloud::FileInfo.new
        target.file_path = "target_files/word/target_protected.docx"
        target.password = "5784"        
        options = GroupDocsComparisonCloud::ComparisonOptions.new
        options.source_file = source
        options.target_files = [target]
        options.output_path = "output/result.docx"

        request = GroupDocsComparisonCloud::ComparisonsRequest.new(options)    
        response = apiInstance.comparisons(request)

        puts("Output file link: " + response.href)
    end
end