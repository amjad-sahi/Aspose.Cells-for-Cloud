module AsposeCellsCloud
  # 
  class Top10Filter < BaseObject
    attr_accessor :criteria, :is_percent, :is_top, :items
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'criteria' => :'Criteria',
        
        # 
        :'is_percent' => :'IsPercent',
        
        # 
        :'is_top' => :'IsTop',
        
        # 
        :'items' => :'Items'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'criteria' => :'String',
        :'is_percent' => :'String',
        :'is_top' => :'String',
        :'items' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Criteria']
        self.criteria = attributes[:'Criteria']
      end
      
      if attributes[:'IsPercent']
        self.is_percent = attributes[:'IsPercent']
      end
      
      if attributes[:'IsTop']
        self.is_top = attributes[:'IsTop']
      end
      
      if attributes[:'Items']
        self.items = attributes[:'Items']
      end
      
    end

  end
end
