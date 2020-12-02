# Import modules
require './Common.rb'

# This example demonstrates how to accept/reject revisions of DOCX document
class ApplyRevisions
    def self.Run()        
        apiInstance = GroupDocsComparisonCloud::ReviewApi.from_config($config)
        source = GroupDocsComparisonCloud::FileInfo.new
        source.file_path = "source_files/word/source_with_revs.docx"

        options = GroupDocsComparisonCloud::ApplyRevisionsOptions.new
        options.source_file = source
        options.output_path = "output/result.docx"

        request = GroupDocsComparisonCloud::GetRevisionsRequest.new(source)    
        revisions = apiInstance.get_revisions(request)

        for revision in revisions do
            revision.action = "Accept"
        end

        options.revisions = revisions
  
        response = apiInstance.apply_revisions(GroupDocsComparisonCloud::ApplyRevisionsRequest.new(options))

        puts("Output file link: " + response.href)
    end
end
