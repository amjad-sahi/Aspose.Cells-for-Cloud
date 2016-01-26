module AsposeCellsCloud
  # 
  class CellsDocumentProperties < BaseObject
    attr_accessor :document_property_list, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'document_property_list' => :'DocumentPropertyList',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'document_property_list' => :'Array<CellsDocumentProperty>',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'DocumentPropertyList']
        if (value = attributes[:'DocumentPropertyList']).is_a?(Array)
          self.document_property_list = value
        end
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
