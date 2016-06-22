module AsposeCellsCloud
  # 
  class Border < BaseObject
    attr_accessor :line_style, :color, :border_type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'line_style' => :'LineStyle',
        
        # 
        :'color' => :'Color',
        
        # 
        :'border_type' => :'BorderType'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'line_style' => :'String',
        :'color' => :'Color',
        :'border_type' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'LineStyle']
        self.line_style = attributes[:'LineStyle']
      end
      
      if attributes[:'Color']
        self.color = attributes[:'Color']
      end
      
      if attributes[:'BorderType']
        self.border_type = attributes[:'BorderType']
      end
      
    end

  end
end
