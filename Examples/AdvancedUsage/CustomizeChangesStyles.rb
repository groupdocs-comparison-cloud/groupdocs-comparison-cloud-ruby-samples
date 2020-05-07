# Import modules
require './Common.rb'

# This example demonstrates how to compare  documents with customizing changes styles
class CustomizeChangesStyles
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
        settings.inserted_items_style = GroupDocsComparisonCloud::ItemsStyle.new
        settings.inserted_items_style.highlight_color = "14297642"
        settings.inserted_items_style.font_color = "16711680"
        settings.inserted_items_style.underline = true
        settings.deleted_items_style = GroupDocsComparisonCloud::ItemsStyle.new        
        settings.deleted_items_style.font_color = "14166746"
        settings.deleted_items_style.bold = true
        settings.changed_items_style = GroupDocsComparisonCloud::ItemsStyle.new        
        settings.changed_items_style.font_color = "14320170"
        settings.changed_items_style.italic = true        
        options.settings = settings

        request = GroupDocsComparisonCloud::ComparisonsRequest.new(options)    
        response = apiInstance.comparisons(request)

        puts("Output file link: " + response.href)
    end
end