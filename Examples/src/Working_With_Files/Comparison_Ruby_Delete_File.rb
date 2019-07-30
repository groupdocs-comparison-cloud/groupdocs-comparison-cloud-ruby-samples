# Load the gem
require 'groupdocs_comparison_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Comparison_Ruby_Delete_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsComparisonCloud::DeleteFileRequest.new("comparisondocs1/source.docx", $myStorage)
    $response = $api.delete_file($request)

    puts("Expected response type is Void: 'comparisondocs1/one-page.docx' deleted.")
  end
end