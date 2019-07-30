# Load the gem
require 'groupdocs_comparison_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Comparison_Ruby_Move_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsComparisonCloud::MoveFileRequest.new("comparisondocs/source.docx", "comparisondocs1/source.docx", $myStorage, $myStorage)
    $response = $api.move_file($request)

    puts("Expected response type is Void: 'comparisondocs/source.docx' file moved to 'comparisondocs1/source.docx'.")
  end
end