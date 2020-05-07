# Import modules
require './Common.rb'

# This example demonstrates how to accept/reject changes after documents compare
class AcceptOrRejectChanges
    def self.Run()        
        apiInstance = GroupDocsComparisonCloud::CompareApi.from_config($config)
        source = GroupDocsComparisonCloud::FileInfo.new
        source.file_path = "source_files/word/source.docx"
        target = GroupDocsComparisonCloud::FileInfo.new
        target.file_path = "target_files/word/target.docx"
        options = GroupDocsComparisonCloud::UpdatesOptions.new
        options.source_file = source
        options.target_files = [target]
        options.output_path = "output/result.docx"

        changes = apiInstance.post_changes(GroupDocsComparisonCloud::PostChangesRequest.new(options))
        for change in changes do
            change.comparison_action = "Reject"
        end
        changes[0].comparison_action = "Accept"

        options.changes = changes
  
        response = apiInstance.put_changes_document(GroupDocsComparisonCloud::PutChangesDocumentRequest.new(options))

        puts("Output file link: " + response.href)
    end
end