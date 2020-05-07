# Import modules
require './Common.rb'

# This example demonstrates how to set custom password for output document
class SetPassword
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
        settings.password_save_option = "User"
        settings.password = "3333"
        options.settings = settings

        request = GroupDocsComparisonCloud::ComparisonsRequest.new(options)    
        response = apiInstance.comparisons(request)

        puts("Output file link: " + response.href)
    end
end