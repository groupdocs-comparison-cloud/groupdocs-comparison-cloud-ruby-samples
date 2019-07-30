# Load the gem
require 'groupdocs_comparison_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Comparison_Ruby_Create_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsComparisonCloud::CreateFolderRequest.new("comparisondocs", $myStorage)
    $response = $api.create_folder($request)

    puts("Expected response type is Void: 'comparisondocs' folder created.")
  end
end