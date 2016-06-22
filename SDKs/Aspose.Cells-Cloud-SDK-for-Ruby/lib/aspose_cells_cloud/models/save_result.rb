module AsposeCellsCloud
  # 
  class SaveResult < BaseObject
    attr_accessor :source_document, :dest_document, :additional_items
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'source_document' => :'SourceDocument',
        
        # 
        :'dest_document' => :'DestDocument',
        
        # 
        :'additional_items' => :'AdditionalItems'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'source_document' => :'Link',
        :'dest_document' => :'Link',
        :'additional_items' => :'Array<Link>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'SourceDocument']
        self.source_document = attributes[:'SourceDocument']
      end
      
      if attributes[:'DestDocument']
        self.dest_document = attributes[:'DestDocument']
      end
      
      if attributes[:'AdditionalItems']
        if (value = attributes[:'AdditionalItems']).is_a?(Array)
          self.additional_items = value
        end
      end
      
    end

  end
end
