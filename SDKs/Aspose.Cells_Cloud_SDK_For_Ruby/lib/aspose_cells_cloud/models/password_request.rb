module AsposeCellsCloud
  # 
  class PasswordRequest < BaseObject
    attr_accessor :password
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'password' => :'Password'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'password' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Password']
        self.password = attributes[:'Password']
      end
      
    end

  end
end
