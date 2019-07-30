require 'common_utilities/Utils.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
$app_key = "XXXXXXXXXXXXXXXXXXXXXX"
$myStorage = "XXXXX" #Put your storage name here
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here

class Run_Examples

  #  ##########################################
  #  puts("Executing Upload Test Files...")
  #  Common_Utilities.Upload_Test_File()
  #  ##########################################

  ###########################################
  #  # ******* Execute Examples *******
  puts("*** Executing examples...")
  #  # ******* Execute Examples *******
  ###########################################

  ##########################################
  puts("*** Executing Supported_File_Formats...")
  ##########################################

  require 'Supported_File_Formats\Comparison_Ruby_Get_Supported_Formats.rb'
  puts("* Executing Comparison_Ruby_Get_Supported_Formats...")
  File_Formats.Comparison_Ruby_Get_Supported_Formats()

  #  ##########################################
  #  puts("*** Executing Working_With_Storage...")
  #  ##########################################

  #  require 'Working_With_Storage/Comparison_Ruby_Storage_Exist.rb'
  #  puts("* Executing Comparison_Ruby_Storage_Exist...")
  #  Working_With_Storage.Comparison_Ruby_Storage_Exist()

  #  require 'Working_With_Storage/Comparison_Ruby_Object_Exists.rb'
  #  puts("* Executing Comparison_Ruby_Object_Exists...")
  #  Working_With_Storage.Comparison_Ruby_Object_Exists()

  #  require 'Working_With_Storage/Comparison_Ruby_Get_File_Versions.rb'
  #  puts("* Executing Comparison_Ruby_Get_File_Versions...")
  #  Working_With_Storage.Comparison_Ruby_Get_File_Versions()

  #  require 'Working_With_Storage/Comparison_Ruby_Get_Disc_Usage.rb'
  #  puts("* Executing Comparison_Ruby_Get_Disc_Usage...")
  #  Working_With_Storage.Comparison_Ruby_Get_Disc_Usage()

  #  ##########################################
  #  puts("*** Executing Working_With_Folder...")
  #  ##########################################

  #  require 'Working_With_Folder/Comparison_Ruby_Create_Folder.rb'
  #  puts("* Executing Comparison_Ruby_Create_Folder...")
  #  Working_With_Folder.Comparison_Ruby_Create_Folder()

  #  require 'Working_With_Folder/Comparison_Ruby_Copy_Folder.rb'
  #  puts("* Executing Comparison_Ruby_Copy_Folder...")
  #  Working_With_Folder.Comparison_Ruby_Copy_Folder()

  #  require 'Working_With_Folder/Comparison_Ruby_Get_Files_List.rb'
  #  puts("* Executing Comparison_Ruby_Get_Files_List...")
  #  Working_With_Folder.Comparison_Ruby_Get_Files_List()

  #  require 'Working_With_Folder/Comparison_Ruby_Move_Folder.rb'
  #  puts("* Executing Comparison_Ruby_Move_Folder...")
  #  Working_With_Folder.Comparison_Ruby_Move_Folder()

  #  require 'Working_With_Folder/Comparison_Ruby_Delete_Folder.rb'
  #  puts("* Executing Comparison_Ruby_Delete_Folder...")
  #  Working_With_Folder.Comparison_Ruby_Delete_Folder()

  #  ##########################################
  #  puts("*** Executing Working_With_Files...")
  #  ##########################################

  #  require 'Working_With_Files/Comparison_Ruby_Upload_File.rb'
  #  puts("* Executing Comparison_Ruby_Upload_File...")
  #  Working_With_Files.Comparison_Ruby_Upload_File()

  #  require 'Working_With_Files/Comparison_Ruby_Download_File.rb'
  #  puts("* Executing Comparison_Ruby_Download_File...")
  #  Working_With_Files.Comparison_Ruby_Download_File()

  #  require 'Working_With_Files/Comparison_Ruby_Copy_File.rb'
  #  puts("* Executing Comparison_Ruby_Copy_File...")
  #  Working_With_Files.Comparison_Ruby_Copy_File()

  #  require 'Working_With_Files/Comparison_Ruby_Move_File.rb'
  #  puts("* Executing Comparison_Ruby_Move_File...")
  #  Working_With_Files.Comparison_Ruby_Move_File()

  #  require 'Working_With_Files/Comparison_Ruby_Delete_File.rb'
  #  puts("* Executing Comparison_Ruby_Delete_File...")
  #  Working_With_Files.Comparison_Ruby_Delete_File()

  #  ##########################################
  #  puts("*** Executing Working_With_Comparison...")
  #  ##########################################

  #  require 'Working_With_Comparisons\Comparison_Ruby_Compare_Single_Document.rb'
  #  puts("* Executing Comparison_Ruby_Compare_Single_Document...")
  #  Working_With_Comparisons.Comparison_Ruby_Compare_Single_Document()

  #  require 'Working_With_Comparisons\Comparison_Ruby_Compare_Multiple_Documents.rb'
  #  puts("* Executing Comparison_Ruby_Compare_Multiple_Documents...")
  #  Working_With_Comparisons.Comparison_Ruby_Compare_Multiple_Documents()

  #  ##########################################
  #  puts("*** Executing Working_With_Changes...")
  #  ##########################################

  #  require 'Working_With_Changes\Comparison_Ruby_Get_Changes_Single_Document.rb'
  #  puts("* Executing Comparison_Ruby_Get_Changes_Single_Document...")
  #  Working_With_Changes.Comparison_Ruby_Get_Changes_Single_Document()

  #  require 'Working_With_Changes\Comparison_Ruby_Get_Changes_Multiple_Documents.rb'
  #  puts("* Executing Comparison_Ruby_Get_Changes_Multiple_Documents...")
  #  Working_With_Changes.Comparison_Ruby_Get_Changes_Multiple_Documents()

  #  require 'Working_With_Changes\Comparison_Ruby_Update_Changes_Single_Document.rb'
  #  puts("* Executing Comparison_Ruby_Update_Changes_Single_Document...")
  #  Working_With_Changes.Comparison_Ruby_Update_Changes_Single_Document()

  #  require 'Working_With_Changes\Comparison_Ruby_Update_Changes_Multiple_Documents.rb'
  #  puts("* Executing Comparison_Ruby_Update_Changes_Multiple_Documents...")
  #  Working_With_Changes.Comparison_Ruby_Update_Changes_Multiple_Documents()

end