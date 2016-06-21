module AsposeCellsCloud
  # 
  class Validation < BaseObject
    attr_accessor :alert_style, :area_list, :error_message, :error_title, :formula1, :formula2, :ignore_blank, :in_cell_drop_down, :input_message, :input_title, :operator, :show_error, :show_input, :type, :value1, :value2, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'alert_style' => :'AlertStyle',
        
        # 
        :'area_list' => :'AreaList',
        
        # 
        :'error_message' => :'ErrorMessage',
        
        # 
        :'error_title' => :'ErrorTitle',
        
        # 
        :'formula1' => :'Formula1',
        
        # 
        :'formula2' => :'Formula2',
        
        # 
        :'ignore_blank' => :'IgnoreBlank',
        
        # 
        :'in_cell_drop_down' => :'InCellDropDown',
        
        # 
        :'input_message' => :'InputMessage',
        
        # 
        :'input_title' => :'InputTitle',
        
        # 
        :'operator' => :'Operator',
        
        # 
        :'show_error' => :'ShowError',
        
        # 
        :'show_input' => :'ShowInput',
        
        # 
        :'type' => :'Type',
        
        # 
        :'value1' => :'Value1',
        
        # 
        :'value2' => :'Value2',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'alert_style' => :'String',
        :'area_list' => :'Array<CellArea>',
        :'error_message' => :'String',
        :'error_title' => :'String',
        :'formula1' => :'String',
        :'formula2' => :'String',
        :'ignore_blank' => :'BOOLEAN',
        :'in_cell_drop_down' => :'BOOLEAN',
        :'input_message' => :'String',
        :'input_title' => :'String',
        :'operator' => :'String',
        :'show_error' => :'BOOLEAN',
        :'show_input' => :'BOOLEAN',
        :'type' => :'String',
        :'value1' => :'String',
        :'value2' => :'String',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'AlertStyle']
        self.alert_style = attributes[:'AlertStyle']
      end
      
      if attributes[:'AreaList']
        if (value = attributes[:'AreaList']).is_a?(Array)
          self.area_list = value
        end
      end
      
      if attributes[:'ErrorMessage']
        self.error_message = attributes[:'ErrorMessage']
      end
      
      if attributes[:'ErrorTitle']
        self.error_title = attributes[:'ErrorTitle']
      end
      
      if attributes[:'Formula1']
        self.formula1 = attributes[:'Formula1']
      end
      
      if attributes[:'Formula2']
        self.formula2 = attributes[:'Formula2']
      end
      
      if attributes[:'IgnoreBlank']
        self.ignore_blank = attributes[:'IgnoreBlank']
      end
      
      if attributes[:'InCellDropDown']
        self.in_cell_drop_down = attributes[:'InCellDropDown']
      end
      
      if attributes[:'InputMessage']
        self.input_message = attributes[:'InputMessage']
      end
      
      if attributes[:'InputTitle']
        self.input_title = attributes[:'InputTitle']
      end
      
      if attributes[:'Operator']
        self.operator = attributes[:'Operator']
      end
      
      if attributes[:'ShowError']
        self.show_error = attributes[:'ShowError']
      end
      
      if attributes[:'ShowInput']
        self.show_input = attributes[:'ShowInput']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'Value1']
        self.value1 = attributes[:'Value1']
      end
      
      if attributes[:'Value2']
        self.value2 = attributes[:'Value2']
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
