module AsposeCellsCloud
  # 
  class PivotPivotTable < BaseObject
    attr_accessor :alt_text_description, :alt_text_title, :auto_format_type, :base_fields, :column_fields, :column_grand, :column_header_caption, :column_range, :custom_list_sort, :data_body_range, :data_field, :data_fields, :data_source, :display_error_string, :display_immediate_items, :display_null_string, :enable_data_value_editing, :enable_drilldown, :enable_field_dialog, :enable_field_list, :enable_wizard, :error_string, :field_list_sort_ascending, :grand_total_name, :has_blank_rows, :indent, :is_auto_format, :is_grid_drop_zones, :is_multiple_field_filters, :is_selected, :item_print_titles, :manual_update, :merge_labels, :missing_items_limit, :name, :null_string, :page_field_order, :page_fields, :page_field_wrap_count, :pivot_filters, :pivot_table_style_name, :pivot_table_style_type, :preserve_formatting, :print_drill, :print_titles, :refresh_data_flag, :refresh_data_on_opening_file, :row_fields, :row_grand, :row_header_caption, :row_range, :save_data, :show_data_tips, :show_drill, :show_empty_col, :show_empty_row, :show_member_property_tips, :show_pivot_style_column_header, :show_pivot_style_column_stripes, :show_pivot_style_last_column, :show_pivot_style_row_header, :show_pivot_style_row_stripes, :show_row_header_caption, :show_values_row, :subtotal_hidden_page_items, :table_range1, :table_range2, :tag, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'alt_text_description' => :'AltTextDescription',
        
        # 
        :'alt_text_title' => :'AltTextTitle',
        
        # 
        :'auto_format_type' => :'AutoFormatType',
        
        # 
        :'base_fields' => :'BaseFields',
        
        # 
        :'column_fields' => :'ColumnFields',
        
        # 
        :'column_grand' => :'ColumnGrand',
        
        # 
        :'column_header_caption' => :'ColumnHeaderCaption',
        
        # 
        :'column_range' => :'ColumnRange',
        
        # 
        :'custom_list_sort' => :'CustomListSort',
        
        # 
        :'data_body_range' => :'DataBodyRange',
        
        # 
        :'data_field' => :'DataField',
        
        # 
        :'data_fields' => :'DataFields',
        
        # 
        :'data_source' => :'DataSource',
        
        # 
        :'display_error_string' => :'DisplayErrorString',
        
        # 
        :'display_immediate_items' => :'DisplayImmediateItems',
        
        # 
        :'display_null_string' => :'DisplayNullString',
        
        # 
        :'enable_data_value_editing' => :'EnableDataValueEditing',
        
        # 
        :'enable_drilldown' => :'EnableDrilldown',
        
        # 
        :'enable_field_dialog' => :'EnableFieldDialog',
        
        # 
        :'enable_field_list' => :'EnableFieldList',
        
        # 
        :'enable_wizard' => :'EnableWizard',
        
        # 
        :'error_string' => :'ErrorString',
        
        # 
        :'field_list_sort_ascending' => :'FieldListSortAscending',
        
        # 
        :'grand_total_name' => :'GrandTotalName',
        
        # 
        :'has_blank_rows' => :'HasBlankRows',
        
        # 
        :'indent' => :'Indent',
        
        # 
        :'is_auto_format' => :'IsAutoFormat',
        
        # 
        :'is_grid_drop_zones' => :'IsGridDropZones',
        
        # 
        :'is_multiple_field_filters' => :'IsMultipleFieldFilters',
        
        # 
        :'is_selected' => :'IsSelected',
        
        # 
        :'item_print_titles' => :'ItemPrintTitles',
        
        # 
        :'manual_update' => :'ManualUpdate',
        
        # 
        :'merge_labels' => :'MergeLabels',
        
        # 
        :'missing_items_limit' => :'MissingItemsLimit',
        
        # 
        :'name' => :'Name',
        
        # 
        :'null_string' => :'NullString',
        
        # 
        :'page_field_order' => :'PageFieldOrder',
        
        # 
        :'page_fields' => :'PageFields',
        
        # 
        :'page_field_wrap_count' => :'PageFieldWrapCount',
        
        # 
        :'pivot_filters' => :'PivotFilters',
        
        # 
        :'pivot_table_style_name' => :'PivotTableStyleName',
        
        # 
        :'pivot_table_style_type' => :'PivotTableStyleType',
        
        # 
        :'preserve_formatting' => :'PreserveFormatting',
        
        # 
        :'print_drill' => :'PrintDrill',
        
        # 
        :'print_titles' => :'PrintTitles',
        
        # 
        :'refresh_data_flag' => :'RefreshDataFlag',
        
        # 
        :'refresh_data_on_opening_file' => :'RefreshDataOnOpeningFile',
        
        # 
        :'row_fields' => :'RowFields',
        
        # 
        :'row_grand' => :'RowGrand',
        
        # 
        :'row_header_caption' => :'RowHeaderCaption',
        
        # 
        :'row_range' => :'RowRange',
        
        # 
        :'save_data' => :'SaveData',
        
        # 
        :'show_data_tips' => :'ShowDataTips',
        
        # 
        :'show_drill' => :'ShowDrill',
        
        # 
        :'show_empty_col' => :'ShowEmptyCol',
        
        # 
        :'show_empty_row' => :'ShowEmptyRow',
        
        # 
        :'show_member_property_tips' => :'ShowMemberPropertyTips',
        
        # 
        :'show_pivot_style_column_header' => :'ShowPivotStyleColumnHeader',
        
        # 
        :'show_pivot_style_column_stripes' => :'ShowPivotStyleColumnStripes',
        
        # 
        :'show_pivot_style_last_column' => :'ShowPivotStyleLastColumn',
        
        # 
        :'show_pivot_style_row_header' => :'ShowPivotStyleRowHeader',
        
        # 
        :'show_pivot_style_row_stripes' => :'ShowPivotStyleRowStripes',
        
        # 
        :'show_row_header_caption' => :'ShowRowHeaderCaption',
        
        # 
        :'show_values_row' => :'ShowValuesRow',
        
        # 
        :'subtotal_hidden_page_items' => :'SubtotalHiddenPageItems',
        
        # 
        :'table_range1' => :'TableRange1',
        
        # 
        :'table_range2' => :'TableRange2',
        
        # 
        :'tag' => :'Tag',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'alt_text_description' => :'String',
        :'alt_text_title' => :'String',
        :'auto_format_type' => :'String',
        :'base_fields' => :'Array<PivotPivotField>',
        :'column_fields' => :'Array<PivotPivotField>',
        :'column_grand' => :'BOOLEAN',
        :'column_header_caption' => :'String',
        :'column_range' => :'CellArea',
        :'custom_list_sort' => :'BOOLEAN',
        :'data_body_range' => :'CellArea',
        :'data_field' => :'PivotPivotField',
        :'data_fields' => :'Array<PivotPivotField>',
        :'data_source' => :'Array<String>',
        :'display_error_string' => :'BOOLEAN',
        :'display_immediate_items' => :'BOOLEAN',
        :'display_null_string' => :'BOOLEAN',
        :'enable_data_value_editing' => :'BOOLEAN',
        :'enable_drilldown' => :'BOOLEAN',
        :'enable_field_dialog' => :'BOOLEAN',
        :'enable_field_list' => :'BOOLEAN',
        :'enable_wizard' => :'BOOLEAN',
        :'error_string' => :'String',
        :'field_list_sort_ascending' => :'BOOLEAN',
        :'grand_total_name' => :'String',
        :'has_blank_rows' => :'BOOLEAN',
        :'indent' => :'Integer',
        :'is_auto_format' => :'BOOLEAN',
        :'is_grid_drop_zones' => :'BOOLEAN',
        :'is_multiple_field_filters' => :'BOOLEAN',
        :'is_selected' => :'BOOLEAN',
        :'item_print_titles' => :'BOOLEAN',
        :'manual_update' => :'BOOLEAN',
        :'merge_labels' => :'BOOLEAN',
        :'missing_items_limit' => :'String',
        :'name' => :'String',
        :'null_string' => :'String',
        :'page_field_order' => :'String',
        :'page_fields' => :'Array<PivotPivotField>',
        :'page_field_wrap_count' => :'Integer',
        :'pivot_filters' => :'Array<PivotPivotFilter>',
        :'pivot_table_style_name' => :'String',
        :'pivot_table_style_type' => :'String',
        :'preserve_formatting' => :'BOOLEAN',
        :'print_drill' => :'BOOLEAN',
        :'print_titles' => :'BOOLEAN',
        :'refresh_data_flag' => :'BOOLEAN',
        :'refresh_data_on_opening_file' => :'BOOLEAN',
        :'row_fields' => :'Array<PivotPivotField>',
        :'row_grand' => :'BOOLEAN',
        :'row_header_caption' => :'String',
        :'row_range' => :'CellArea',
        :'save_data' => :'BOOLEAN',
        :'show_data_tips' => :'BOOLEAN',
        :'show_drill' => :'BOOLEAN',
        :'show_empty_col' => :'BOOLEAN',
        :'show_empty_row' => :'BOOLEAN',
        :'show_member_property_tips' => :'BOOLEAN',
        :'show_pivot_style_column_header' => :'BOOLEAN',
        :'show_pivot_style_column_stripes' => :'BOOLEAN',
        :'show_pivot_style_last_column' => :'BOOLEAN',
        :'show_pivot_style_row_header' => :'BOOLEAN',
        :'show_pivot_style_row_stripes' => :'BOOLEAN',
        :'show_row_header_caption' => :'BOOLEAN',
        :'show_values_row' => :'BOOLEAN',
        :'subtotal_hidden_page_items' => :'BOOLEAN',
        :'table_range1' => :'CellArea',
        :'table_range2' => :'CellArea',
        :'tag' => :'String',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'AltTextDescription']
        self.alt_text_description = attributes[:'AltTextDescription']
      end
      
      if attributes[:'AltTextTitle']
        self.alt_text_title = attributes[:'AltTextTitle']
      end
      
      if attributes[:'AutoFormatType']
        self.auto_format_type = attributes[:'AutoFormatType']
      end
      
      if attributes[:'BaseFields']
        if (value = attributes[:'BaseFields']).is_a?(Array)
          self.base_fields = value
        end
      end
      
      if attributes[:'ColumnFields']
        if (value = attributes[:'ColumnFields']).is_a?(Array)
          self.column_fields = value
        end
      end
      
      if attributes[:'ColumnGrand']
        self.column_grand = attributes[:'ColumnGrand']
      end
      
      if attributes[:'ColumnHeaderCaption']
        self.column_header_caption = attributes[:'ColumnHeaderCaption']
      end
      
      if attributes[:'ColumnRange']
        self.column_range = attributes[:'ColumnRange']
      end
      
      if attributes[:'CustomListSort']
        self.custom_list_sort = attributes[:'CustomListSort']
      end
      
      if attributes[:'DataBodyRange']
        self.data_body_range = attributes[:'DataBodyRange']
      end
      
      if attributes[:'DataField']
        self.data_field = attributes[:'DataField']
      end
      
      if attributes[:'DataFields']
        if (value = attributes[:'DataFields']).is_a?(Array)
          self.data_fields = value
        end
      end
      
      if attributes[:'DataSource']
        if (value = attributes[:'DataSource']).is_a?(Array)
          self.data_source = value
        end
      end
      
      if attributes[:'DisplayErrorString']
        self.display_error_string = attributes[:'DisplayErrorString']
      end
      
      if attributes[:'DisplayImmediateItems']
        self.display_immediate_items = attributes[:'DisplayImmediateItems']
      end
      
      if attributes[:'DisplayNullString']
        self.display_null_string = attributes[:'DisplayNullString']
      end
      
      if attributes[:'EnableDataValueEditing']
        self.enable_data_value_editing = attributes[:'EnableDataValueEditing']
      end
      
      if attributes[:'EnableDrilldown']
        self.enable_drilldown = attributes[:'EnableDrilldown']
      end
      
      if attributes[:'EnableFieldDialog']
        self.enable_field_dialog = attributes[:'EnableFieldDialog']
      end
      
      if attributes[:'EnableFieldList']
        self.enable_field_list = attributes[:'EnableFieldList']
      end
      
      if attributes[:'EnableWizard']
        self.enable_wizard = attributes[:'EnableWizard']
      end
      
      if attributes[:'ErrorString']
        self.error_string = attributes[:'ErrorString']
      end
      
      if attributes[:'FieldListSortAscending']
        self.field_list_sort_ascending = attributes[:'FieldListSortAscending']
      end
      
      if attributes[:'GrandTotalName']
        self.grand_total_name = attributes[:'GrandTotalName']
      end
      
      if attributes[:'HasBlankRows']
        self.has_blank_rows = attributes[:'HasBlankRows']
      end
      
      if attributes[:'Indent']
        self.indent = attributes[:'Indent']
      end
      
      if attributes[:'IsAutoFormat']
        self.is_auto_format = attributes[:'IsAutoFormat']
      end
      
      if attributes[:'IsGridDropZones']
        self.is_grid_drop_zones = attributes[:'IsGridDropZones']
      end
      
      if attributes[:'IsMultipleFieldFilters']
        self.is_multiple_field_filters = attributes[:'IsMultipleFieldFilters']
      end
      
      if attributes[:'IsSelected']
        self.is_selected = attributes[:'IsSelected']
      end
      
      if attributes[:'ItemPrintTitles']
        self.item_print_titles = attributes[:'ItemPrintTitles']
      end
      
      if attributes[:'ManualUpdate']
        self.manual_update = attributes[:'ManualUpdate']
      end
      
      if attributes[:'MergeLabels']
        self.merge_labels = attributes[:'MergeLabels']
      end
      
      if attributes[:'MissingItemsLimit']
        self.missing_items_limit = attributes[:'MissingItemsLimit']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'NullString']
        self.null_string = attributes[:'NullString']
      end
      
      if attributes[:'PageFieldOrder']
        self.page_field_order = attributes[:'PageFieldOrder']
      end
      
      if attributes[:'PageFields']
        if (value = attributes[:'PageFields']).is_a?(Array)
          self.page_fields = value
        end
      end
      
      if attributes[:'PageFieldWrapCount']
        self.page_field_wrap_count = attributes[:'PageFieldWrapCount']
      end
      
      if attributes[:'PivotFilters']
        if (value = attributes[:'PivotFilters']).is_a?(Array)
          self.pivot_filters = value
        end
      end
      
      if attributes[:'PivotTableStyleName']
        self.pivot_table_style_name = attributes[:'PivotTableStyleName']
      end
      
      if attributes[:'PivotTableStyleType']
        self.pivot_table_style_type = attributes[:'PivotTableStyleType']
      end
      
      if attributes[:'PreserveFormatting']
        self.preserve_formatting = attributes[:'PreserveFormatting']
      end
      
      if attributes[:'PrintDrill']
        self.print_drill = attributes[:'PrintDrill']
      end
      
      if attributes[:'PrintTitles']
        self.print_titles = attributes[:'PrintTitles']
      end
      
      if attributes[:'RefreshDataFlag']
        self.refresh_data_flag = attributes[:'RefreshDataFlag']
      end
      
      if attributes[:'RefreshDataOnOpeningFile']
        self.refresh_data_on_opening_file = attributes[:'RefreshDataOnOpeningFile']
      end
      
      if attributes[:'RowFields']
        if (value = attributes[:'RowFields']).is_a?(Array)
          self.row_fields = value
        end
      end
      
      if attributes[:'RowGrand']
        self.row_grand = attributes[:'RowGrand']
      end
      
      if attributes[:'RowHeaderCaption']
        self.row_header_caption = attributes[:'RowHeaderCaption']
      end
      
      if attributes[:'RowRange']
        self.row_range = attributes[:'RowRange']
      end
      
      if attributes[:'SaveData']
        self.save_data = attributes[:'SaveData']
      end
      
      if attributes[:'ShowDataTips']
        self.show_data_tips = attributes[:'ShowDataTips']
      end
      
      if attributes[:'ShowDrill']
        self.show_drill = attributes[:'ShowDrill']
      end
      
      if attributes[:'ShowEmptyCol']
        self.show_empty_col = attributes[:'ShowEmptyCol']
      end
      
      if attributes[:'ShowEmptyRow']
        self.show_empty_row = attributes[:'ShowEmptyRow']
      end
      
      if attributes[:'ShowMemberPropertyTips']
        self.show_member_property_tips = attributes[:'ShowMemberPropertyTips']
      end
      
      if attributes[:'ShowPivotStyleColumnHeader']
        self.show_pivot_style_column_header = attributes[:'ShowPivotStyleColumnHeader']
      end
      
      if attributes[:'ShowPivotStyleColumnStripes']
        self.show_pivot_style_column_stripes = attributes[:'ShowPivotStyleColumnStripes']
      end
      
      if attributes[:'ShowPivotStyleLastColumn']
        self.show_pivot_style_last_column = attributes[:'ShowPivotStyleLastColumn']
      end
      
      if attributes[:'ShowPivotStyleRowHeader']
        self.show_pivot_style_row_header = attributes[:'ShowPivotStyleRowHeader']
      end
      
      if attributes[:'ShowPivotStyleRowStripes']
        self.show_pivot_style_row_stripes = attributes[:'ShowPivotStyleRowStripes']
      end
      
      if attributes[:'ShowRowHeaderCaption']
        self.show_row_header_caption = attributes[:'ShowRowHeaderCaption']
      end
      
      if attributes[:'ShowValuesRow']
        self.show_values_row = attributes[:'ShowValuesRow']
      end
      
      if attributes[:'SubtotalHiddenPageItems']
        self.subtotal_hidden_page_items = attributes[:'SubtotalHiddenPageItems']
      end
      
      if attributes[:'TableRange1']
        self.table_range1 = attributes[:'TableRange1']
      end
      
      if attributes[:'TableRange2']
        self.table_range2 = attributes[:'TableRange2']
      end
      
      if attributes[:'Tag']
        self.tag = attributes[:'Tag']
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
