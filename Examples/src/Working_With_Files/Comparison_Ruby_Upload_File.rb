# Load the gem
require 'groupdocs_comparison_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Comparison_Ruby_Upload_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $fileStream = File.new("src\\Resources\\comparisondocs\\source.docx", "r")

    $request = GroupDocsComparisonCloud::UploadFileRequest.new("comparisondocs/source1.docx", $fileStream, $myStorage)
    $response = $api.upload_file($request)

    $fileStream.close()

    puts("Expected response type is FilesUploadResult: " + ($response).to_s)
  end
end