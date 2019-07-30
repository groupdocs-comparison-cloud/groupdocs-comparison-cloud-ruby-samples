# Load the gem
require 'groupdocs_comparison_cloud'

#require 'aspose_storage_cloud'
$app_sid = ""
$app_key = ""
$storage_name = ""
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here
$myStorage = "MyStorage"

class Common_Utilities
  def self.Get_InfoApi_Instance()
    # Create instance of the API
    return GroupDocsComparisonCloud::InfoApi.from_keys($app_sid, $app_key)
  end

  def self.Get_CompareApi_Instance()
    # Create instance of the API
    return GroupDocsComparisonCloud::CompareApi.from_keys($app_sid, $app_key)
  end

  def self.Get_StorageApi_Instance()
    # Create instance of the API
    return GroupDocsComparisonCloud::StorageApi.from_keys($app_sid, $app_key)
  end

  def self.Get_FolderApi_Instance()
    # Create instance of the API
    return GroupDocsComparisonCloud::FolderApi.from_keys($app_sid, $app_key)
  end

  def self.Get_FileApi_Instance()
    # Create instance of the API
    return GroupDocsComparisonCloud::FileApi.from_keys($app_sid, $app_key)
  end

  def self.Upload_Test_File()

    @TestFiles = Dir.entries(File.absolute_path("src/Resources/comparisondocs")).select {|f| !File.directory? f}

    # Storage Api initialization
    storageApi = Get_StorageApi_Instance()
    fileApi = Get_FileApi_Instance()

    puts("Files Count: "+((@TestFiles).length).to_s)

    @TestFiles.each do |item|
      # skip existing file uploading
      fileExistRequest = GroupDocsComparisonCloud::ObjectExistsRequest.new('comparisondocs\\' + File.basename(item))
      fileExistsResponse = storageApi.object_exists(fileExistRequest)
      if fileExistsResponse.exists == false
        puts("File to Upload: " + File.basename(item))
        # file content uploading
        fileContent = File.binread(File.dirname(item) + "\\src\\Resources\\comparisondocs\\" + File.basename(item))
        putCreateRequest = GroupDocsComparisonCloud::UploadFileRequest.new('comparisondocs\\' + File.basename(item), fileContent)
        fileApi.upload_file(putCreateRequest)
        puts("Uploaded missing file: " + File.basename(item))
      end
    end

    puts("File Uploading completed..")
  end
end