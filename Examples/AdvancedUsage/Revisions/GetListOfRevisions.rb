# Import modules
require './Common.rb'

# This example demonstrates how to get list of revisions of DOCX document
class GetListOfRevisions
    def self.Run()        
        apiInstance = GroupDocsComparisonCloud::ReviewApi.from_config($config)
        source = GroupDocsComparisonCloud::FileInfo.new
        source.file_path = "source_files/word/source_with_revs.docx"

        request = GroupDocsComparisonCloud::GetRevisionsRequest.new(source)    
        revisions = apiInstance.get_revisions(request)

        puts("Revisions count: " + revisions.length.to_s)
    end
end
