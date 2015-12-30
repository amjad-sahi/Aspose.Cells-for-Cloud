module AsposeCellsCloud
  # 
  class WorkbookEncryptionRequest < BaseObject
    attr_accessor :encryption_type, :key_length, :password
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'encryption_type' => :'EncryptionType',
        
        # 
        :'key_length' => :'KeyLength',
        
        # 
        :'password' => :'Password'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'encryption_type' => :'String',
        :'key_length' => :'Integer',
        :'password' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'EncryptionType']
        self.encryption_type = attributes[:'EncryptionType']
      end
      
      if attributes[:'KeyLength']
        self.key_length = attributes[:'KeyLength']
      end
      
      if attributes[:'Password']
        self.password = attributes[:'Password']
      end
      
    end

  end
end
