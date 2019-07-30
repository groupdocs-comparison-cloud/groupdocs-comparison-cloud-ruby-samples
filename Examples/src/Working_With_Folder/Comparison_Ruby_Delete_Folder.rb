# Load the gem
require 'groupdocs_comparison_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Comparison_Ruby_Delete_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsComparisonCloud::DeleteFolderRequest.new("comparisondocs1", $myStorage, true)
    $response = $api.delete_folder($request)

    puts("Expected response type is Void: 'comparisondocs/comparisondocs1' folder deleted recursively.")
  end
end