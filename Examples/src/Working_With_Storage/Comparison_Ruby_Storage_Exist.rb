# Load the gem
require 'groupdocs_comparison_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Storage
  def self.Comparison_Ruby_Storage_Exist()

    # Getting instance of the API
    $api = Common_Utilities.Get_StorageApi_Instance()
    
    $request = GroupDocsComparisonCloud::StorageExistsRequest.new($myStorage)
    $response = $api.storage_exists($request)

    puts("Expected response type is StorageExist: " + ($response).to_s)
  end
end