# Load the gem
require 'groupdocs_comparison_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Comparison_Ruby_Copy_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsComparisonCloud::CopyFileRequest.new("source.docx", "comparisondocs\\source.docx", $myStorage, $myStorage)
    $response = $api.copy_file($request)

    puts("Expected response type is Void: 'comparisondocs/source.docx' file copied as 'comparisondocs/source-copied.docx'.")
  end
end