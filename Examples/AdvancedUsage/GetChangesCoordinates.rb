# Import modules
require './Common.rb'

# This example demonstrates how to get changes coordinates
class GetChangesCoordinates
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
        for change in changes[0..2] do
            puts("Change Type: " + change.type + ", X: " + change.box.x.to_s, ", Y: " + change.box.y.to_s + ", Text: " + change.text)
        end
        puts("...")
    end
end
