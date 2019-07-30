# Load the gem
require 'groupdocs_comparison_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Comparisons
  def self.Comparison_Ruby_Compare_Single_Document()

    # Getting instance of the API
    api = Common_Utilities.Get_CompareApi_Instance()

    $options = GroupDocsComparisonCloud::Options.new()

    # Source file
    $sourceFileInfo = GroupDocsComparisonCloud::FileInfo.new();
    $sourceFileInfo.file_path = "Comparisondocs\\source_protected.docx";
    $sourceFileInfo.password = "1231";
    $sourceFileInfo.storage_name = $myStorage;

    $options.source_file = $sourceFileInfo
    $options.output_path = "Comparisondocs\\result_single_protected.docx"

    $options.settings = GroupDocsComparisonCloud::Settings.new()
    $options.settings.generate_summary_page = true
    $options.settings.show_deleted_content = true
    $options.settings.style_change_detection = true
    $options.settings.use_frames_for_del_ins_elements = false
    $options.settings.meta_data = nil
    $options.settings.detail_level = "Low"
    $options.settings.diagram_master_setting = nil
    $options.settings.calculate_component_coordinates = false
    $options.settings.clone_metadata = "Default"
    $options.settings.mark_deleted_inserted_content_deep = false
    $options.settings.password = "1111"
    $options.settings.password_save_option = "User"

    $options.settings.deleted_items_style = GroupDocsComparisonCloud::ItemsStyle.new()
    $options.settings.deleted_items_style.begin_separator_string = ""
    $options.settings.deleted_items_style.end_separator_string = ""
    $options.settings.deleted_items_style.font_color = "16711680"
    $options.settings.deleted_items_style.highlight_color = "16711680"
    $options.settings.deleted_items_style.bold = false
    $options.settings.deleted_items_style.italic = false
    $options.settings.deleted_items_style.strike_through = false

    $options.settings.inserted_items_style = GroupDocsComparisonCloud::ItemsStyle.new()
    $options.settings.inserted_items_style.begin_separator_string = ""
    $options.settings.inserted_items_style.end_separator_string = ""
    $options.settings.inserted_items_style.font_color = "255"
    $options.settings.inserted_items_style.highlight_color = "255"
    $options.settings.inserted_items_style.bold = false
    $options.settings.inserted_items_style.italic = false
    $options.settings.inserted_items_style.strike_through = false

    $options.settings.style_changed_items_style = GroupDocsComparisonCloud::ItemsStyle.new()
    $options.settings.style_changed_items_style.begin_separator_string = ""
    $options.settings.style_changed_items_style.end_separator_string = ""
    $options.settings.style_changed_items_style.font_color = "65280"
    $options.settings.style_changed_items_style.highlight_color = "65280"
    $options.settings.style_changed_items_style.bold = false
    $options.settings.style_changed_items_style.italic = false
    $options.settings.style_changed_items_style.strike_through = false

    # Target file
    $targetFileInfo = GroupDocsComparisonCloud::FileInfo.new();
    $targetFileInfo.file_path = "Comparisondocs\\target_protected.docx";
    $targetFileInfo.password = "5784";
    $targetFileInfo.storage_name = $myStorage;

    $options.target_files = [$targetFileInfo]

    $request = GroupDocsComparisonCloud::ComparisonsRequest.new($options)
    $response = api.comparisons($request)

    puts("Expected response type is Link: " + $response.href)
  end
end