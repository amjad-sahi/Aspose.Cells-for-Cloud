module AsposeCellsCloud
  # 
  class DrawingGradientFillStop < BaseObject
    attr_accessor :color, :position, :transparency
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'color' => :'Color',
        
        # 
        :'position' => :'Position',
        
        # 
        :'transparency' => :'Transparency'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'color' => :'Color',
        :'position' => :'Float',
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
      
      if attributes[:'Position']
        self.position = attributes[:'Position']
      end
      
      if attributes[:'Transparency']
        self.transparency = attributes[:'Transparency']
      end
      
    end

  end
end
