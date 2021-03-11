# Import modules
require './Common.rb'

# This example demonstrates how to accept all revisions of DOCX document
class AcceptAllRevisions
    def self.Run()        
        apiInstance = GroupDocsComparisonCloud::ReviewApi.from_config($config)
        source = GroupDocsComparisonCloud::FileInfo.new
        source.file_path = "source_files/word/source_with_revs.docx"

        options = GroupDocsComparisonCloud::ApplyRevisionsOptions.new
        options.source_file = source
        options.accept_all = true
        options.output_path = "output/result.docx"
  
        response = apiInstance.apply_revisions(GroupDocsComparisonCloud::ApplyRevisionsRequest.new(options))

        puts("Output file link: " + response.href)
    end
end
