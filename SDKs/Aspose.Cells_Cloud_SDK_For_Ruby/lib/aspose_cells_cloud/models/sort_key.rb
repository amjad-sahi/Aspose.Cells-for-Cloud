module AsposeCellsCloud
  # 
  class SortKey < BaseObject
    attr_accessor :key, :sort_order
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'key' => :'Key',
        
        # 
        :'sort_order' => :'SortOrder'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'key' => :'Integer',
        :'sort_order' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Key']
        self.key = attributes[:'Key']
      end
      
      if attributes[:'SortOrder']
        self.sort_order = attributes[:'SortOrder']
      end
      
    end

  end
end
