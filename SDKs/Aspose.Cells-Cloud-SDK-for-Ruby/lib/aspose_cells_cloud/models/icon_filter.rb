module AsposeCellsCloud
  # 
  class IconFilter < BaseObject
    attr_accessor :icon_id, :icon_set_type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'icon_id' => :'IconId',
        
        # 
        :'icon_set_type' => :'IconSetType'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'icon_id' => :'Integer',
        :'icon_set_type' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'IconId']
        self.icon_id = attributes[:'IconId']
      end
      
      if attributes[:'IconSetType']
        self.icon_set_type = attributes[:'IconSetType']
      end
      
    end

  end
end
