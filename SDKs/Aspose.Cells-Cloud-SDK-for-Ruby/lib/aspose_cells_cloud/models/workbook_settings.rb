module AsposeCellsCloud
  # 
  class WorkbookSettings < BaseObject
    attr_accessor :auto_compress_pictures, :auto_recover, :build_version, :calc_mode, :calc_stack_size, :calculation_id, :check_comptiliblity, :check_excel_restriction, :crash_save, :create_calc_chain, :data_extract_load, :date1904, :display_drawing_objects, :enable_macros, :first_visible_tab, :hide_pivot_field_list, :is_default_encrypted, :is_hidden, :is_h_scroll_bar_visible, :is_minimized, :is_v_scroll_bar_visible, :iteration, :language_code, :max_change, :max_iteration, :memory_setting, :number_decimal_separator, :number_group_separator, :parsing_formula_on_open, :precision_as_displayed, :recalculate_before_save, :re_calculate_on_open, :recommend_read_only, :region, :remove_personal_information, :repair_load, :shared, :sheet_tab_bar_width, :show_tabs, :update_adjacent_cells_border, :update_links_type, :window_height, :window_left, :window_top, :window_width
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'auto_compress_pictures' => :'AutoCompressPictures',
        
        # 
        :'auto_recover' => :'AutoRecover',
        
        # 
        :'build_version' => :'BuildVersion',
        
        # 
        :'calc_mode' => :'CalcMode',
        
        # 
        :'calc_stack_size' => :'CalcStackSize',
        
        # 
        :'calculation_id' => :'CalculationId',
        
        # 
        :'check_comptiliblity' => :'CheckComptiliblity',
        
        # 
        :'check_excel_restriction' => :'CheckExcelRestriction',
        
        # 
        :'crash_save' => :'CrashSave',
        
        # 
        :'create_calc_chain' => :'CreateCalcChain',
        
        # 
        :'data_extract_load' => :'DataExtractLoad',
        
        # 
        :'date1904' => :'Date1904',
        
        # 
        :'display_drawing_objects' => :'DisplayDrawingObjects',
        
        # 
        :'enable_macros' => :'EnableMacros',
        
        # 
        :'first_visible_tab' => :'FirstVisibleTab',
        
        # 
        :'hide_pivot_field_list' => :'HidePivotFieldList',
        
        # 
        :'is_default_encrypted' => :'IsDefaultEncrypted',
        
        # 
        :'is_hidden' => :'IsHidden',
        
        # 
        :'is_h_scroll_bar_visible' => :'IsHScrollBarVisible',
        
        # 
        :'is_minimized' => :'IsMinimized',
        
        # 
        :'is_v_scroll_bar_visible' => :'IsVScrollBarVisible',
        
        # 
        :'iteration' => :'Iteration',
        
        # 
        :'language_code' => :'LanguageCode',
        
        # 
        :'max_change' => :'MaxChange',
        
        # 
        :'max_iteration' => :'MaxIteration',
        
        # 
        :'memory_setting' => :'MemorySetting',
        
        # 
        :'number_decimal_separator' => :'NumberDecimalSeparator',
        
        # 
        :'number_group_separator' => :'NumberGroupSeparator',
        
        # 
        :'parsing_formula_on_open' => :'ParsingFormulaOnOpen',
        
        # 
        :'precision_as_displayed' => :'PrecisionAsDisplayed',
        
        # 
        :'recalculate_before_save' => :'RecalculateBeforeSave',
        
        # 
        :'re_calculate_on_open' => :'ReCalculateOnOpen',
        
        # 
        :'recommend_read_only' => :'RecommendReadOnly',
        
        # 
        :'region' => :'Region',
        
        # 
        :'remove_personal_information' => :'RemovePersonalInformation',
        
        # 
        :'repair_load' => :'RepairLoad',
        
        # 
        :'shared' => :'Shared',
        
        # 
        :'sheet_tab_bar_width' => :'SheetTabBarWidth',
        
        # 
        :'show_tabs' => :'ShowTabs',
        
        # 
        :'update_adjacent_cells_border' => :'UpdateAdjacentCellsBorder',
        
        # 
        :'update_links_type' => :'UpdateLinksType',
        
        # 
        :'window_height' => :'WindowHeight',
        
        # 
        :'window_left' => :'WindowLeft',
        
        # 
        :'window_top' => :'WindowTop',
        
        # 
        :'window_width' => :'WindowWidth'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'auto_compress_pictures' => :'BOOLEAN',
        :'auto_recover' => :'BOOLEAN',
        :'build_version' => :'String',
        :'calc_mode' => :'String',
        :'calc_stack_size' => :'Integer',
        :'calculation_id' => :'String',
        :'check_comptiliblity' => :'BOOLEAN',
        :'check_excel_restriction' => :'BOOLEAN',
        :'crash_save' => :'BOOLEAN',
        :'create_calc_chain' => :'BOOLEAN',
        :'data_extract_load' => :'BOOLEAN',
        :'date1904' => :'BOOLEAN',
        :'display_drawing_objects' => :'String',
        :'enable_macros' => :'BOOLEAN',
        :'first_visible_tab' => :'Integer',
        :'hide_pivot_field_list' => :'BOOLEAN',
        :'is_default_encrypted' => :'BOOLEAN',
        :'is_hidden' => :'BOOLEAN',
        :'is_h_scroll_bar_visible' => :'BOOLEAN',
        :'is_minimized' => :'BOOLEAN',
        :'is_v_scroll_bar_visible' => :'BOOLEAN',
        :'iteration' => :'BOOLEAN',
        :'language_code' => :'String',
        :'max_change' => :'Float',
        :'max_iteration' => :'Integer',
        :'memory_setting' => :'String',
        :'number_decimal_separator' => :'String',
        :'number_group_separator' => :'String',
        :'parsing_formula_on_open' => :'BOOLEAN',
        :'precision_as_displayed' => :'BOOLEAN',
        :'recalculate_before_save' => :'BOOLEAN',
        :'re_calculate_on_open' => :'BOOLEAN',
        :'recommend_read_only' => :'BOOLEAN',
        :'region' => :'String',
        :'remove_personal_information' => :'BOOLEAN',
        :'repair_load' => :'BOOLEAN',
        :'shared' => :'BOOLEAN',
        :'sheet_tab_bar_width' => :'Integer',
        :'show_tabs' => :'BOOLEAN',
        :'update_adjacent_cells_border' => :'BOOLEAN',
        :'update_links_type' => :'String',
        :'window_height' => :'Float',
        :'window_left' => :'Float',
        :'window_top' => :'Float',
        :'window_width' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'AutoCompressPictures']
        self.auto_compress_pictures = attributes[:'AutoCompressPictures']
      end
      
      if attributes[:'AutoRecover']
        self.auto_recover = attributes[:'AutoRecover']
      end
      
      if attributes[:'BuildVersion']
        self.build_version = attributes[:'BuildVersion']
      end
      
      if attributes[:'CalcMode']
        self.calc_mode = attributes[:'CalcMode']
      end
      
      if attributes[:'CalcStackSize']
        self.calc_stack_size = attributes[:'CalcStackSize']
      end
      
      if attributes[:'CalculationId']
        self.calculation_id = attributes[:'CalculationId']
      end
      
      if attributes[:'CheckComptiliblity']
        self.check_comptiliblity = attributes[:'CheckComptiliblity']
      end
      
      if attributes[:'CheckExcelRestriction']
        self.check_excel_restriction = attributes[:'CheckExcelRestriction']
      end
      
      if attributes[:'CrashSave']
        self.crash_save = attributes[:'CrashSave']
      end
      
      if attributes[:'CreateCalcChain']
        self.create_calc_chain = attributes[:'CreateCalcChain']
      end
      
      if attributes[:'DataExtractLoad']
        self.data_extract_load = attributes[:'DataExtractLoad']
      end
      
      if attributes[:'Date1904']
        self.date1904 = attributes[:'Date1904']
      end
      
      if attributes[:'DisplayDrawingObjects']
        self.display_drawing_objects = attributes[:'DisplayDrawingObjects']
      end
      
      if attributes[:'EnableMacros']
        self.enable_macros = attributes[:'EnableMacros']
      end
      
      if attributes[:'FirstVisibleTab']
        self.first_visible_tab = attributes[:'FirstVisibleTab']
      end
      
      if attributes[:'HidePivotFieldList']
        self.hide_pivot_field_list = attributes[:'HidePivotFieldList']
      end
      
      if attributes[:'IsDefaultEncrypted']
        self.is_default_encrypted = attributes[:'IsDefaultEncrypted']
      end
      
      if attributes[:'IsHidden']
        self.is_hidden = attributes[:'IsHidden']
      end
      
      if attributes[:'IsHScrollBarVisible']
        self.is_h_scroll_bar_visible = attributes[:'IsHScrollBarVisible']
      end
      
      if attributes[:'IsMinimized']
        self.is_minimized = attributes[:'IsMinimized']
      end
      
      if attributes[:'IsVScrollBarVisible']
        self.is_v_scroll_bar_visible = attributes[:'IsVScrollBarVisible']
      end
      
      if attributes[:'Iteration']
        self.iteration = attributes[:'Iteration']
      end
      
      if attributes[:'LanguageCode']
        self.language_code = attributes[:'LanguageCode']
      end
      
      if attributes[:'MaxChange']
        self.max_change = attributes[:'MaxChange']
      end
      
      if attributes[:'MaxIteration']
        self.max_iteration = attributes[:'MaxIteration']
      end
      
      if attributes[:'MemorySetting']
        self.memory_setting = attributes[:'MemorySetting']
      end
      
      if attributes[:'NumberDecimalSeparator']
        self.number_decimal_separator = attributes[:'NumberDecimalSeparator']
      end
      
      if attributes[:'NumberGroupSeparator']
        self.number_group_separator = attributes[:'NumberGroupSeparator']
      end
      
      if attributes[:'ParsingFormulaOnOpen']
        self.parsing_formula_on_open = attributes[:'ParsingFormulaOnOpen']
      end
      
      if attributes[:'PrecisionAsDisplayed']
        self.precision_as_displayed = attributes[:'PrecisionAsDisplayed']
      end
      
      if attributes[:'RecalculateBeforeSave']
        self.recalculate_before_save = attributes[:'RecalculateBeforeSave']
      end
      
      if attributes[:'ReCalculateOnOpen']
        self.re_calculate_on_open = attributes[:'ReCalculateOnOpen']
      end
      
      if attributes[:'RecommendReadOnly']
        self.recommend_read_only = attributes[:'RecommendReadOnly']
      end
      
      if attributes[:'Region']
        self.region = attributes[:'Region']
      end
      
      if attributes[:'RemovePersonalInformation']
        self.remove_personal_information = attributes[:'RemovePersonalInformation']
      end
      
      if attributes[:'RepairLoad']
        self.repair_load = attributes[:'RepairLoad']
      end
      
      if attributes[:'Shared']
        self.shared = attributes[:'Shared']
      end
      
      if attributes[:'SheetTabBarWidth']
        self.sheet_tab_bar_width = attributes[:'SheetTabBarWidth']
      end
      
      if attributes[:'ShowTabs']
        self.show_tabs = attributes[:'ShowTabs']
      end
      
      if attributes[:'UpdateAdjacentCellsBorder']
        self.update_adjacent_cells_border = attributes[:'UpdateAdjacentCellsBorder']
      end
      
      if attributes[:'UpdateLinksType']
        self.update_links_type = attributes[:'UpdateLinksType']
      end
      
      if attributes[:'WindowHeight']
        self.window_height = attributes[:'WindowHeight']
      end
      
      if attributes[:'WindowLeft']
        self.window_left = attributes[:'WindowLeft']
      end
      
      if attributes[:'WindowTop']
        self.window_top = attributes[:'WindowTop']
      end
      
      if attributes[:'WindowWidth']
        self.window_width = attributes[:'WindowWidth']
      end
      
    end

  end
end
