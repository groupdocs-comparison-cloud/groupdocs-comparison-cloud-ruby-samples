# Import modules
require './Common.rb'

#  This example demonstrates how to get document information
class GetDocumentInformation
    def self.Run()        
        infoApi = GroupDocsComparisonCloud::InfoApi.from_config($config)
        file_info = GroupDocsComparisonCloud::FileInfo.new
        file_info.file_path = "source_files/word/source.docx"

        request = GroupDocsComparisonCloud::GetDocumentInfoRequest.new(file_info)    
        response = infoApi.get_document_info(request)

        puts("GetDocumentInformation completed: " + response.page_count.to_s)
    end
end