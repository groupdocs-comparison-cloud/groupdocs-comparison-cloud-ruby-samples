require 'groupdocs_comparison_cloud'
require './Common.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "XXXX-XXXX-XXXX-XXXX"
$app_key = "XXXXXXXXXXXXXXXX"

$config = GroupDocsComparisonCloud::Configuration.new($app_sid, $app_key)
$config.api_base_url = "https://api.groupdocs.cloud"

class RunExamples

  # Uploading sample test files from local disk to cloud storage
  Common.UploadSampleFiles()

  # Basic usage examples

  require './BasicUsage/GetSupportedFormats.rb'
  GetSupportedFormats.Run()
  require './BasicUsage/GetDocumentInformation.rb'
  GetDocumentInformation.Run()  
  require './BasicUsage/CompareDocuments.rb'
  CompareDocuments.Run()    
  require './BasicUsage/CompareDifferentFormats/ComparePdfDocuments.rb'
  ComparePdfDocuments.Run()  

  # Advanced usage examples
  require './AdvancedUsage/CompareMultipleDocuments/CompareMultipleDocumentsOptions.rb'
  CompareMultipleDocumentsOptions.Run()
  require './AdvancedUsage/CompareMultipleDocuments/CompareMultipleProtectedDocuments.rb'
  CompareMultipleProtectedDocuments.Run()  
  require './AdvancedUsage/SaveOptions/SetMetadata.rb'
  SetMetadata.Run() 
  require './AdvancedUsage/SaveOptions/SetPassword.rb'
  SetPassword.Run()   
  require './AdvancedUsage/AcceptOrRejectChanges.rb'
  AcceptOrRejectChanges.Run()   
  require './AdvancedUsage/CompareProtectedDocuments.rb'
  CompareProtectedDocuments.Run()  
  require './AdvancedUsage/CompareSensitivity.rb'
  CompareSensitivity.Run()  
  require './AdvancedUsage/CustomizeChangesStyles.rb'
  CustomizeChangesStyles.Run() 
  require './AdvancedUsage/GetChangesCoordinates.rb'
  GetChangesCoordinates.Run() 
  require './AdvancedUsage/GetListOfChanges.rb'
  GetListOfChanges.Run() 

end