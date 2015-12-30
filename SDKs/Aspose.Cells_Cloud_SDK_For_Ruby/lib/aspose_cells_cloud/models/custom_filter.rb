module AsposeCellsCloud
  # 
  class CustomFilter < BaseObject
    attr_accessor :criteria, :filter_operator_type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'criteria' => :'Criteria',
        
        # 
        :'filter_operator_type' => :'FilterOperatorType'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'criteria' => :'Object',
        :'filter_operator_type' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Criteria']
        self.criteria = attributes[:'Criteria']
      end
      
      if attributes[:'FilterOperatorType']
        self.filter_operator_type = attributes[:'FilterOperatorType']
      end
      
    end

  end
end
