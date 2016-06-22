module AsposeCellsCloud
  # 
  class WorkbookProtectionRequest < BaseObject
    attr_accessor :protection_type, :password
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'protection_type' => :'ProtectionType',
        
        # 
        :'password' => :'Password'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'protection_type' => :'String',
        :'password' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'ProtectionType']
        self.protection_type = attributes[:'ProtectionType']
      end
      
      if attributes[:'Password']
        self.password = attributes[:'Password']
      end
      
    end

  end
end
