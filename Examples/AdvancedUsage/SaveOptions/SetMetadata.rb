# Import modules
require './Common.rb'

# This example demonstrates how to set custom metadata for output document
class SetMetadata
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
        settings.meta_data = GroupDocsComparisonCloud::Metadata.new
        settings.meta_data.author = "Tom"
        settings.meta_data.company = "GroupDocs"
        settings.meta_data.last_save_by = "Jack"
        settings.clone_metadata = "FileAuthor"
        options.settings = settings

        request = GroupDocsComparisonCloud::ComparisonsRequest.new(options)    
        response = apiInstance.comparisons(request)

        puts("Output file link: " + response.href)
    end
end