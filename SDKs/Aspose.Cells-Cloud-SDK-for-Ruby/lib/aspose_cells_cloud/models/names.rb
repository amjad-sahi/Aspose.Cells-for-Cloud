module AsposeCellsCloud
  # 
  class Names < BaseObject
    attr_accessor :count, :name_list, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'count' => :'Count',
        
        # 
        :'name_list' => :'NameList',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'count' => :'Integer',
        :'name_list' => :'Array<LinkElement>',
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
      
      if attributes[:'NameList']
        if (value = attributes[:'NameList']).is_a?(Array)
          self.name_list = value
        end
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
