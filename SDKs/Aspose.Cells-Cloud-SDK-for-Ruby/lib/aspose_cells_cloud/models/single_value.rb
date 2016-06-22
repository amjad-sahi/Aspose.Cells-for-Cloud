module AsposeCellsCloud
  # 
  class SingleValue < BaseObject
    attr_accessor :value_type, :value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'value_type' => :'ValueType',
        
        # 
        :'value' => :'Value'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'value_type' => :'String',
        :'value' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'ValueType']
        self.value_type = attributes[:'ValueType']
      end
      
      if attributes[:'Value']
        self.value = attributes[:'Value']
      end
      
    end

  end
end
