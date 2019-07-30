# Load the gem
require 'groupdocs_comparison_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Comparison_Ruby_Copy_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsComparisonCloud::CopyFolderRequest.new("comparisondocs", "comparisondocs1", $myStorage, $myStorage)
    $response = $api.copy_folder($request)

    puts("Expected response type is Void: 'comparisondocs' folder copied as 'comparisondocs1'.")
  end
end