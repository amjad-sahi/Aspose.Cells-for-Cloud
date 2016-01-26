module AsposeCellsCloud
  # 
  class ProtectSheetParameter < BaseObject
    attr_accessor :protection_type, :password, :allow_edit_area, :allow_deleting_column, :allow_deleting_row, :allow_filtering, :allow_formatting_cell, :allow_formatting_column, :allow_formatting_row, :allow_inserting_column, :allow_inserting_hyperlink, :allow_inserting_row, :allow_selecting_locked_cell, :allow_selecting_unlocked_cell, :allow_sorting, :allow_using_pivot_table
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'protection_type' => :'ProtectionType',
        
        # 
        :'password' => :'Password',
        
        # 
        :'allow_edit_area' => :'AllowEditArea',
        
        # 
        :'allow_deleting_column' => :'AllowDeletingColumn',
        
        # 
        :'allow_deleting_row' => :'AllowDeletingRow',
        
        # 
        :'allow_filtering' => :'AllowFiltering',
        
        # 
        :'allow_formatting_cell' => :'AllowFormattingCell',
        
        # 
        :'allow_formatting_column' => :'AllowFormattingColumn',
        
        # 
        :'allow_formatting_row' => :'AllowFormattingRow',
        
        # 
        :'allow_inserting_column' => :'AllowInsertingColumn',
        
        # 
        :'allow_inserting_hyperlink' => :'AllowInsertingHyperlink',
        
        # 
        :'allow_inserting_row' => :'AllowInsertingRow',
        
        # 
        :'allow_selecting_locked_cell' => :'AllowSelectingLockedCell',
        
        # 
        :'allow_selecting_unlocked_cell' => :'AllowSelectingUnlockedCell',
        
        # 
        :'allow_sorting' => :'AllowSorting',
        
        # 
        :'allow_using_pivot_table' => :'AllowUsingPivotTable'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'protection_type' => :'String',
        :'password' => :'String',
        :'allow_edit_area' => :'Array<String>',
        :'allow_deleting_column' => :'String',
        :'allow_deleting_row' => :'String',
        :'allow_filtering' => :'String',
        :'allow_formatting_cell' => :'String',
        :'allow_formatting_column' => :'String',
        :'allow_formatting_row' => :'String',
        :'allow_inserting_column' => :'String',
        :'allow_inserting_hyperlink' => :'String',
        :'allow_inserting_row' => :'String',
        :'allow_selecting_locked_cell' => :'String',
        :'allow_selecting_unlocked_cell' => :'String',
        :'allow_sorting' => :'String',
        :'allow_using_pivot_table' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'ProtectionType']
        self.protection_type = attributes[:'ProtectionType']
      end
      
      if attributes[:'Password']
        self.password = attributes[:'Password']
      end
      
      if attributes[:'AllowEditArea']
        if (value = attributes[:'AllowEditArea']).is_a?(Array)
          self.allow_edit_area = value
        end
      end
      
      if attributes[:'AllowDeletingColumn']
        self.allow_deleting_column = attributes[:'AllowDeletingColumn']
      end
      
      if attributes[:'AllowDeletingRow']
        self.allow_deleting_row = attributes[:'AllowDeletingRow']
      end
      
      if attributes[:'AllowFiltering']
        self.allow_filtering = attributes[:'AllowFiltering']
      end
      
      if attributes[:'AllowFormattingCell']
        self.allow_formatting_cell = attributes[:'AllowFormattingCell']
      end
      
      if attributes[:'AllowFormattingColumn']
        self.allow_formatting_column = attributes[:'AllowFormattingColumn']
      end
      
      if attributes[:'AllowFormattingRow']
        self.allow_formatting_row = attributes[:'AllowFormattingRow']
      end
      
      if attributes[:'AllowInsertingColumn']
        self.allow_inserting_column = attributes[:'AllowInsertingColumn']
      end
      
      if attributes[:'AllowInsertingHyperlink']
        self.allow_inserting_hyperlink = attributes[:'AllowInsertingHyperlink']
      end
      
      if attributes[:'AllowInsertingRow']
        self.allow_inserting_row = attributes[:'AllowInsertingRow']
      end
      
      if attributes[:'AllowSelectingLockedCell']
        self.allow_selecting_locked_cell = attributes[:'AllowSelectingLockedCell']
      end
      
      if attributes[:'AllowSelectingUnlockedCell']
        self.allow_selecting_unlocked_cell = attributes[:'AllowSelectingUnlockedCell']
      end
      
      if attributes[:'AllowSorting']
        self.allow_sorting = attributes[:'AllowSorting']
      end
      
      if attributes[:'AllowUsingPivotTable']
        self.allow_using_pivot_table = attributes[:'AllowUsingPivotTable']
      end
      
    end

  end
end
