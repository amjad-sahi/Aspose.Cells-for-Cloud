module AsposeCellsCloud
  # 
  class DrawingSolidFill < BaseObject
    attr_accessor :color, :cells_color, :transparency
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'color' => :'Color',
        
        # 
        :'cells_color' => :'CellsColor',
        
        # 
        :'transparency' => :'Transparency'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'color' => :'Color',
        :'cells_color' => :'CellsColor',
        :'transparency' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Color']
        self.color = attributes[:'Color']
      end
      
      if attributes[:'CellsColor']
        self.cells_color = attributes[:'CellsColor']
      end
      
      if attributes[:'Transparency']
        self.transparency = attributes[:'Transparency']
      end
      
    end

  end
end
