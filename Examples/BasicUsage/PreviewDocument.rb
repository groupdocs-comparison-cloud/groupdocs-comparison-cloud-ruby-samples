# Import modules
require './Common.rb'

# This example demonstrates how to preview document
class PreviewDocument
    def self.Run()        
        apiInstance = GroupDocsComparisonCloud::PreviewApi.from_config($config)
        source = GroupDocsComparisonCloud::FileInfo.new
        source.file_path = "source_files/word/source.docx"
        options = GroupDocsComparisonCloud::PreviewOptions.new
        options.file_info = source
        options.format = "png"
        options.output_folder = "output"

        request = GroupDocsComparisonCloud::PreviewRequest.new(options)    
        response = apiInstance.preview(request)

        puts("Output file count: " + response.length.to_s)
    end
end