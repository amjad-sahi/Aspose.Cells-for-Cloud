module AsposeCellsCloud
  # 
  class DynamicFilter < BaseObject
    attr_accessor :dynamic_filter_type, :max_value, :value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'dynamic_filter_type' => :'DynamicFilterType',
        
        # 
        :'max_value' => :'MaxValue',
        
        # 
        :'value' => :'Value'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'dynamic_filter_type' => :'String',
        :'max_value' => :'String',
        :'value' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'DynamicFilterType']
        self.dynamic_filter_type = attributes[:'DynamicFilterType']
      end
      
      if attributes[:'MaxValue']
        self.max_value = attributes[:'MaxValue']
      end
      
      if attributes[:'Value']
        self.value = attributes[:'Value']
      end
      
    end

  end
end
