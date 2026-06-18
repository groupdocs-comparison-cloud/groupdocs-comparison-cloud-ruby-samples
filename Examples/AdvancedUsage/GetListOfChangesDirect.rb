# Import modules
require './Common.rb'

# This example demonstrates how to get list of changes by sending documents directly as multipart/form-data
class GetListOfChangesDirect
    def self.Run()
        apiInstance = GroupDocsComparisonCloud::CompareApi.from_config($config)

        source_file = File.open("Resources/source_files/word/source.docx", "rb")
        target_file = File.open("Resources/target_files/word/target.docx", "rb")

        request = GroupDocsComparisonCloud::PutChangesRequest.new(source_file, [target_file])
        changes = apiInstance.put_changes(request)

        puts("Changes count: " + changes.length.to_s)
    ensure
        source_file.close if source_file
        target_file.close if target_file
    end
end
