# Load the gem
require 'groupdocs_comparison_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Comparison_Ruby_Move_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()

    $request = GroupDocsComparisonCloud::MoveFolderRequest.new("comparisondocs1", "comparisondocs/comparisondocs1", $myStorage, $myStorage)
    $response = $api.move_folder($request)

    puts("Expected response type is Void: 'comparisondocs1' folder moved to 'comparisondocs/comparisondocs1'.")
  end
end