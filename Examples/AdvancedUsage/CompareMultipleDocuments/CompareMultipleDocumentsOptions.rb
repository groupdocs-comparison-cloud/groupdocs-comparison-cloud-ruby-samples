# Import modules
require './Common.rb'

# This example demonstrates how to compare multiple documents with options
class CompareMultipleDocumentsOptions
    def self.Run()        
        apiInstance = GroupDocsComparisonCloud::CompareApi.from_config($config)
        source = GroupDocsComparisonCloud::FileInfo.new
        source.file_path = "source_files/word/source.docx"
        target = GroupDocsComparisonCloud::FileInfo.new
        target.file_path = "target_files/word/target.docx"
        target1 = GroupDocsComparisonCloud::FileInfo.new
        target1.file_path = "target_files/word/target_1.docx"
        target2 = GroupDocsComparisonCloud::FileInfo.new
        target2.file_path = "target_files/word/target_2.docx"                
        options = GroupDocsComparisonCloud::ComparisonOptions.new
        options.source_file = source
        options.target_files = [target, target1, target2]
        options.output_path = "output/result.docx"
        settings = GroupDocsComparisonCloud::Settings.new
        settings.inserted_items_style = GroupDocsComparisonCloud::ItemsStyle.new
        settings.inserted_items_style.font_color = "16711680"
        options.settings = settings

        request = GroupDocsComparisonCloud::ComparisonsRequest.new(options)    
        response = apiInstance.comparisons(request)

        puts("Output file link: " + response.href)
    end
end