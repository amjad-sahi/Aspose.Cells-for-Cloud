module AsposeCellsCloud
  # 
  class PivotTableFieldRequest < BaseObject
    attr_accessor :data
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'data' => :'Data'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'data' => :'Array<Integer>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Data']
        if (value = attributes[:'Data']).is_a?(Array)
          self.data = value
        end
      end
      
    end

  end
end
