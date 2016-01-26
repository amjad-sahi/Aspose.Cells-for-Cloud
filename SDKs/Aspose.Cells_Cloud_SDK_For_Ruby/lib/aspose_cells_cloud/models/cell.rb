module AsposeCellsCloud
  # 
  class Cell < BaseObject
    attr_accessor :name, :row, :column, :value, :type, :formula, :is_formula, :is_merged, :is_array_header, :is_in_array, :is_error_value, :is_in_table, :is_style_set, :html_string, :style, :worksheet, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'name' => :'Name',
        
        # 
        :'row' => :'Row',
        
        # 
        :'column' => :'Column',
        
        # 
        :'value' => :'Value',
        
        # 
        :'type' => :'Type',
        
        # 
        :'formula' => :'Formula',
        
        # 
        :'is_formula' => :'IsFormula',
        
        # 
        :'is_merged' => :'IsMerged',
        
        # 
        :'is_array_header' => :'IsArrayHeader',
        
        # 
        :'is_in_array' => :'IsInArray',
        
        # 
        :'is_error_value' => :'IsErrorValue',
        
        # 
        :'is_in_table' => :'IsInTable',
        
        # 
        :'is_style_set' => :'IsStyleSet',
        
        # 
        :'html_string' => :'HtmlString',
        
        # 
        :'style' => :'Style',
        
        # 
        :'worksheet' => :'Worksheet',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'String',
        :'row' => :'Integer',
        :'column' => :'Integer',
        :'value' => :'String',
        :'type' => :'String',
        :'formula' => :'String',
        :'is_formula' => :'BOOLEAN',
        :'is_merged' => :'BOOLEAN',
        :'is_array_header' => :'BOOLEAN',
        :'is_in_array' => :'BOOLEAN',
        :'is_error_value' => :'BOOLEAN',
        :'is_in_table' => :'BOOLEAN',
        :'is_style_set' => :'BOOLEAN',
        :'html_string' => :'String',
        :'style' => :'LinkElement',
        :'worksheet' => :'String',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Row']
        self.row = attributes[:'Row']
      end
      
      if attributes[:'Column']
        self.column = attributes[:'Column']
      end
      
      if attributes[:'Value']
        self.value = attributes[:'Value']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'Formula']
        self.formula = attributes[:'Formula']
      end
      
      if attributes[:'IsFormula']
        self.is_formula = attributes[:'IsFormula']
      end
      
      if attributes[:'IsMerged']
        self.is_merged = attributes[:'IsMerged']
      end
      
      if attributes[:'IsArrayHeader']
        self.is_array_header = attributes[:'IsArrayHeader']
      end
      
      if attributes[:'IsInArray']
        self.is_in_array = attributes[:'IsInArray']
      end
      
      if attributes[:'IsErrorValue']
        self.is_error_value = attributes[:'IsErrorValue']
      end
      
      if attributes[:'IsInTable']
        self.is_in_table = attributes[:'IsInTable']
      end
      
      if attributes[:'IsStyleSet']
        self.is_style_set = attributes[:'IsStyleSet']
      end
      
      if attributes[:'HtmlString']
        self.html_string = attributes[:'HtmlString']
      end
      
      if attributes[:'Style']
        self.style = attributes[:'Style']
      end
      
      if attributes[:'Worksheet']
        self.worksheet = attributes[:'Worksheet']
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
