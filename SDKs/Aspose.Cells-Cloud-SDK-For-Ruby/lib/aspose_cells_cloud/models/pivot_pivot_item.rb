module AsposeCellsCloud
  # 
  class PivotPivotItem < BaseObject
    attr_accessor :index, :is_hidden, :name, :value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'index' => :'Index',
        
        # 
        :'is_hidden' => :'IsHidden',
        
        # 
        :'name' => :'Name',
        
        # 
        :'value' => :'Value'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'index' => :'Integer',
        :'is_hidden' => :'BOOLEAN',
        :'name' => :'String',
        :'value' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Index']
        self.index = attributes[:'Index']
      end
      
      if attributes[:'IsHidden']
        self.is_hidden = attributes[:'IsHidden']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Value']
        self.value = attributes[:'Value']
      end
      
    end

  end
end
