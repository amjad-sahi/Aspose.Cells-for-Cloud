module AsposeCellsCloud
  # 
  class ThemeColor < BaseObject
    attr_accessor :color_type, :tint
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'color_type' => :'ColorType',
        
        # 
        :'tint' => :'Tint'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'color_type' => :'String',
        :'tint' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'ColorType']
        self.color_type = attributes[:'ColorType']
      end
      
      if attributes[:'Tint']
        self.tint = attributes[:'Tint']
      end
      
    end

  end
end
