# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module GroupDocsComparisonExamples
  # Load the gem
  require 'groupdocs_comparison_cloud'
  require 'groupdocs_storage_cloud'  
  require_relative '../utils'
  class GetChangesCategories
    def changes_categories
      
      @config = GroupDocsComparisonCloud::Configuration.new(Utils::APP_SID, Utils::APP_KEY)
      @config.api_base_url = Utils::API_BASE_URL
      @sourcefile = "source.docx"
      @targetfile = "target.docx"
      
      # Upload file to Cloud Storage
      upload_file(@sourcefile)
      upload_file(@targetfile)
      
      @changes_api = GroupDocsComparisonCloud::ChangesApi.from_config(@config)
      
      request = GroupDocsComparisonCloud::PostCategoriesChangesRequest.new(GetComparisonRequest(@sourcefile, @targetfile),'ByNodeType')
      listComparisonChangesCategoryDto = @changes_api.post_categories_changes(request)
      listComparisonChangesCategoryDto.each do |comparisonChangesCategoryDto|
        puts comparisonChangesCategoryDto
      end      
      puts 'completed'
      
    end
    
    # Upload file to Cloud Storage
    def upload_file(file_name)
      @conf = GroupDocsStorageCloud::Configuration.new
      @conf.api_key['app_sid'] = Utils::APP_SID
      @conf.api_key['api_key'] = Utils::APP_KEY
      @conf.host = Utils::API_BASE_URL
      
      @api_client = GroupDocsStorageCloud::ApiClient.new @conf
	    @storage_api = GroupDocsStorageCloud::StorageApi.new @api_client
      
      file = File.open("../resources/"+file_name,"rb").read        
		  version_id = nil
		  storage = nil
		  request = GroupDocsStorageCloud::PutCreateRequest.new(file_name, file, version_id, storage)
		  @storage_api.put_create(request)
      
    end
    
    def GetComparisonRequest(sourceName,*targetsNames)
       request = GroupDocsComparisonCloud::ComparisonRequest.new;
       setting = GroupDocsComparisonCloud::ComparisonRequestSettings.new;
       setting.generate_summary_page = true;
       setting.show_deleted_content = true;
       setting.style_change_detection = true;
       setting.use_frames_for_del_ins_elements = false;
       setting.detail_level = "Low";

       deletedItemStyle = GroupDocsComparisonCloud::StyleSettingsValues.new;
       deletedItemStyle.begin_separator_string = "";
       deletedItemStyle.end_separator_string = "";
       deletedItemStyle.color = GroupDocsComparisonCloud::Color.new.red;

       setting.deleted_items_style = deletedItemStyle;

       insertedItemStyle = GroupDocsComparisonCloud::StyleSettingsValues.new;
       insertedItemStyle.begin_separator_string = "";
       insertedItemStyle.end_separator_string = "";
       insertedItemStyle.color = GroupDocsComparisonCloud::Color.new.blue;

       setting.inserted_items_style = insertedItemStyle;

       styleChangeItemStyle = GroupDocsComparisonCloud::StyleSettingsValues.new;
       styleChangeItemStyle.begin_separator_string= "";
       styleChangeItemStyle.end_separator_string = "";
       styleChangeItemStyle.color = GroupDocsComparisonCloud::Color.new.green;

       setting.style_changed_items_style = styleChangeItemStyle;

       setting.calculate_component_coordinates = false;
       setting.clone_metadata = "Source";
       setting.mark_deleted_inserted_content_deep = false;
       setting.meta_data = nil;
       setting.password = "1111";
       setting.password_save_option = "User";

       request.settings = setting;

       sourseFile = GroupDocsComparisonCloud::ComparisonFileInfo.new;
       sourseFile.folder = "";
       sourseFile.password = "";
       sourseFile.name = sourceName;

       request.source_file = sourseFile;

       targets = Array.new;

       targetsNames.each do |targetName| 
         changeInfo = GroupDocsComparisonCloud::ComparisonFileInfo.new;
         changeInfo.name = targetName;
         changeInfo.folder = "";
         changeInfo.password = "";
         targets.push(changeInfo);
       end

       request.target_files = targets;

       comparisonChanges = Array.new(2);

       comparisonChanges[0] = GroupDocsComparisonCloud::ComparisonChange.new;
       comparisonChanges[0].id = 0;
       comparisonChanges[0].action = "Accept";
       comparisonChanges[1] = GroupDocsComparisonCloud::ComparisonChange.new;
       comparisonChanges[1].id = 1;
       comparisonChanges[1].action = "Reject";

       request.changes = comparisonChanges;

       return  request;
     end
    
  end
  object = GetChangesCategories.new()
  object.changes_categories()
end
