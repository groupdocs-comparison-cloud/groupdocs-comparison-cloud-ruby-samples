# Import modules
require './Common.rb'

# This example demonstrates how to get list of changes of compared documents
class GetListOfChanges
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
        settings.calculate_component_coordinates = 100
        options.settings = settings

        request = GroupDocsComparisonCloud::PostChangesRequest.new(options)    
        changes = apiInstance.post_changes(request)
        puts("Changes count: " + changes.length.to_s)
    end
end
