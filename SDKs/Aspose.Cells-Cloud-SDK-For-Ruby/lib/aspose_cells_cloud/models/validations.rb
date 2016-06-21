module AsposeCellsCloud
  # 
  class Validations < BaseObject
    attr_accessor :count, :validation_list, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'count' => :'Count',
        
        # 
        :'validation_list' => :'ValidationList',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'count' => :'Integer',
        :'validation_list' => :'Array<LinkElement>',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Count']
        self.count = attributes[:'Count']
      end
      
      if attributes[:'ValidationList']
        if (value = attributes[:'ValidationList']).is_a?(Array)
          self.validation_list = value
        end
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
