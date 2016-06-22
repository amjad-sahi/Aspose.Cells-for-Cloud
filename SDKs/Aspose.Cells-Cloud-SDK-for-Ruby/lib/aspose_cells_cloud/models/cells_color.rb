module AsposeCellsCloud
  # 
  class CellsColor < BaseObject
    attr_accessor :color, :color_index, :is_shape_color, :theme_color, :type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'color' => :'Color',
        
        # 
        :'color_index' => :'ColorIndex',
        
        # 
        :'is_shape_color' => :'IsShapeColor',
        
        # 
        :'theme_color' => :'ThemeColor',
        
        # 
        :'type' => :'Type'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'color' => :'Color',
        :'color_index' => :'Integer',
        :'is_shape_color' => :'BOOLEAN',
        :'theme_color' => :'ThemeColor',
        :'type' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Color']
        self.color = attributes[:'Color']
      end
      
      if attributes[:'ColorIndex']
        self.color_index = attributes[:'ColorIndex']
      end
      
      if attributes[:'IsShapeColor']
        self.is_shape_color = attributes[:'IsShapeColor']
      end
      
      if attributes[:'ThemeColor']
        self.theme_color = attributes[:'ThemeColor']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
    end

  end
end
