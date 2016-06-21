module AsposeCellsCloud
  # 
  class ImportDataImportOption < BaseObject
    attr_accessor :destination_worksheet, :is_insert
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'destination_worksheet' => :'DestinationWorksheet',
        
        # 
        :'is_insert' => :'IsInsert'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'destination_worksheet' => :'String',
        :'is_insert' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'DestinationWorksheet']
        self.destination_worksheet = attributes[:'DestinationWorksheet']
      end
      
      if attributes[:'IsInsert']
        self.is_insert = attributes[:'IsInsert']
      end
      
    end

  end
end
