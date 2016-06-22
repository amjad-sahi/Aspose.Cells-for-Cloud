module AsposeCellsCloud
  # 
  class PivotPivotField < BaseObject
    attr_accessor :auto_show_count, :auto_show_field, :auto_sort_field, :base_field, :base_index, :base_item, :base_item_position, :current_page_item, :data_display_format, :display_name, :drag_to_column, :drag_to_data, :drag_to_hide, :drag_to_page, :drag_to_row, :function, :insert_blank_row, :is_ascend_show, :is_ascend_sort, :is_auto_show, :is_auto_sort, :is_auto_subtotals, :is_calculated_field, :is_include_new_items_in_filter, :is_insert_page_breaks_between_items, :is_multiple_item_selection_allowed, :is_repeat_item_labels, :item_count, :items, :name, :number, :number_format, :original_items, :pivot_items, :position, :show_all_items, :show_compact, :show_in_outline_form, :show_subtotal_at_top
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'auto_show_count' => :'AutoShowCount',
        
        # 
        :'auto_show_field' => :'AutoShowField',
        
        # 
        :'auto_sort_field' => :'AutoSortField',
        
        # 
        :'base_field' => :'BaseField',
        
        # 
        :'base_index' => :'BaseIndex',
        
        # 
        :'base_item' => :'BaseItem',
        
        # 
        :'base_item_position' => :'BaseItemPosition',
        
        # 
        :'current_page_item' => :'CurrentPageItem',
        
        # 
        :'data_display_format' => :'DataDisplayFormat',
        
        # 
        :'display_name' => :'DisplayName',
        
        # 
        :'drag_to_column' => :'DragToColumn',
        
        # 
        :'drag_to_data' => :'DragToData',
        
        # 
        :'drag_to_hide' => :'DragToHide',
        
        # 
        :'drag_to_page' => :'DragToPage',
        
        # 
        :'drag_to_row' => :'DragToRow',
        
        # 
        :'function' => :'Function',
        
        # 
        :'insert_blank_row' => :'InsertBlankRow',
        
        # 
        :'is_ascend_show' => :'IsAscendShow',
        
        # 
        :'is_ascend_sort' => :'IsAscendSort',
        
        # 
        :'is_auto_show' => :'IsAutoShow',
        
        # 
        :'is_auto_sort' => :'IsAutoSort',
        
        # 
        :'is_auto_subtotals' => :'IsAutoSubtotals',
        
        # 
        :'is_calculated_field' => :'IsCalculatedField',
        
        # 
        :'is_include_new_items_in_filter' => :'IsIncludeNewItemsInFilter',
        
        # 
        :'is_insert_page_breaks_between_items' => :'IsInsertPageBreaksBetweenItems',
        
        # 
        :'is_multiple_item_selection_allowed' => :'IsMultipleItemSelectionAllowed',
        
        # 
        :'is_repeat_item_labels' => :'IsRepeatItemLabels',
        
        # 
        :'item_count' => :'ItemCount',
        
        # 
        :'items' => :'Items',
        
        # 
        :'name' => :'Name',
        
        # 
        :'number' => :'Number',
        
        # 
        :'number_format' => :'NumberFormat',
        
        # 
        :'original_items' => :'OriginalItems',
        
        # 
        :'pivot_items' => :'PivotItems',
        
        # 
        :'position' => :'Position',
        
        # 
        :'show_all_items' => :'ShowAllItems',
        
        # 
        :'show_compact' => :'ShowCompact',
        
        # 
        :'show_in_outline_form' => :'ShowInOutlineForm',
        
        # 
        :'show_subtotal_at_top' => :'ShowSubtotalAtTop'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'auto_show_count' => :'Integer',
        :'auto_show_field' => :'Integer',
        :'auto_sort_field' => :'Integer',
        :'base_field' => :'Integer',
        :'base_index' => :'Integer',
        :'base_item' => :'Integer',
        :'base_item_position' => :'String',
        :'current_page_item' => :'Integer',
        :'data_display_format' => :'String',
        :'display_name' => :'String',
        :'drag_to_column' => :'BOOLEAN',
        :'drag_to_data' => :'BOOLEAN',
        :'drag_to_hide' => :'BOOLEAN',
        :'drag_to_page' => :'BOOLEAN',
        :'drag_to_row' => :'BOOLEAN',
        :'function' => :'String',
        :'insert_blank_row' => :'BOOLEAN',
        :'is_ascend_show' => :'BOOLEAN',
        :'is_ascend_sort' => :'BOOLEAN',
        :'is_auto_show' => :'BOOLEAN',
        :'is_auto_sort' => :'BOOLEAN',
        :'is_auto_subtotals' => :'BOOLEAN',
        :'is_calculated_field' => :'BOOLEAN',
        :'is_include_new_items_in_filter' => :'BOOLEAN',
        :'is_insert_page_breaks_between_items' => :'BOOLEAN',
        :'is_multiple_item_selection_allowed' => :'BOOLEAN',
        :'is_repeat_item_labels' => :'BOOLEAN',
        :'item_count' => :'Integer',
        :'items' => :'Array<String>',
        :'name' => :'String',
        :'number' => :'Integer',
        :'number_format' => :'String',
        :'original_items' => :'Array<String>',
        :'pivot_items' => :'Array<PivotPivotItem>',
        :'position' => :'Integer',
        :'show_all_items' => :'BOOLEAN',
        :'show_compact' => :'BOOLEAN',
        :'show_in_outline_form' => :'BOOLEAN',
        :'show_subtotal_at_top' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'AutoShowCount']
        self.auto_show_count = attributes[:'AutoShowCount']
      end
      
      if attributes[:'AutoShowField']
        self.auto_show_field = attributes[:'AutoShowField']
      end
      
      if attributes[:'AutoSortField']
        self.auto_sort_field = attributes[:'AutoSortField']
      end
      
      if attributes[:'BaseField']
        self.base_field = attributes[:'BaseField']
      end
      
      if attributes[:'BaseIndex']
        self.base_index = attributes[:'BaseIndex']
      end
      
      if attributes[:'BaseItem']
        self.base_item = attributes[:'BaseItem']
      end
      
      if attributes[:'BaseItemPosition']
        self.base_item_position = attributes[:'BaseItemPosition']
      end
      
      if attributes[:'CurrentPageItem']
        self.current_page_item = attributes[:'CurrentPageItem']
      end
      
      if attributes[:'DataDisplayFormat']
        self.data_display_format = attributes[:'DataDisplayFormat']
      end
      
      if attributes[:'DisplayName']
        self.display_name = attributes[:'DisplayName']
      end
      
      if attributes[:'DragToColumn']
        self.drag_to_column = attributes[:'DragToColumn']
      end
      
      if attributes[:'DragToData']
        self.drag_to_data = attributes[:'DragToData']
      end
      
      if attributes[:'DragToHide']
        self.drag_to_hide = attributes[:'DragToHide']
      end
      
      if attributes[:'DragToPage']
        self.drag_to_page = attributes[:'DragToPage']
      end
      
      if attributes[:'DragToRow']
        self.drag_to_row = attributes[:'DragToRow']
      end
      
      if attributes[:'Function']
        self.function = attributes[:'Function']
      end
      
      if attributes[:'InsertBlankRow']
        self.insert_blank_row = attributes[:'InsertBlankRow']
      end
      
      if attributes[:'IsAscendShow']
        self.is_ascend_show = attributes[:'IsAscendShow']
      end
      
      if attributes[:'IsAscendSort']
        self.is_ascend_sort = attributes[:'IsAscendSort']
      end
      
      if attributes[:'IsAutoShow']
        self.is_auto_show = attributes[:'IsAutoShow']
      end
      
      if attributes[:'IsAutoSort']
        self.is_auto_sort = attributes[:'IsAutoSort']
      end
      
      if attributes[:'IsAutoSubtotals']
        self.is_auto_subtotals = attributes[:'IsAutoSubtotals']
      end
      
      if attributes[:'IsCalculatedField']
        self.is_calculated_field = attributes[:'IsCalculatedField']
      end
      
      if attributes[:'IsIncludeNewItemsInFilter']
        self.is_include_new_items_in_filter = attributes[:'IsIncludeNewItemsInFilter']
      end
      
      if attributes[:'IsInsertPageBreaksBetweenItems']
        self.is_insert_page_breaks_between_items = attributes[:'IsInsertPageBreaksBetweenItems']
      end
      
      if attributes[:'IsMultipleItemSelectionAllowed']
        self.is_multiple_item_selection_allowed = attributes[:'IsMultipleItemSelectionAllowed']
      end
      
      if attributes[:'IsRepeatItemLabels']
        self.is_repeat_item_labels = attributes[:'IsRepeatItemLabels']
      end
      
      if attributes[:'ItemCount']
        self.item_count = attributes[:'ItemCount']
      end
      
      if attributes[:'Items']
        if (value = attributes[:'Items']).is_a?(Array)
          self.items = value
        end
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Number']
        self.number = attributes[:'Number']
      end
      
      if attributes[:'NumberFormat']
        self.number_format = attributes[:'NumberFormat']
      end
      
      if attributes[:'OriginalItems']
        if (value = attributes[:'OriginalItems']).is_a?(Array)
          self.original_items = value
        end
      end
      
      if attributes[:'PivotItems']
        if (value = attributes[:'PivotItems']).is_a?(Array)
          self.pivot_items = value
        end
      end
      
      if attributes[:'Position']
        self.position = attributes[:'Position']
      end
      
      if attributes[:'ShowAllItems']
        self.show_all_items = attributes[:'ShowAllItems']
      end
      
      if attributes[:'ShowCompact']
        self.show_compact = attributes[:'ShowCompact']
      end
      
      if attributes[:'ShowInOutlineForm']
        self.show_in_outline_form = attributes[:'ShowInOutlineForm']
      end
      
      if attributes[:'ShowSubtotalAtTop']
        self.show_subtotal_at_top = attributes[:'ShowSubtotalAtTop']
      end
      
    end

  end
end
