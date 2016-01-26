module AsposeCellsCloud
  # 
  class WorksheetMovingRequest < BaseObject
    attr_accessor :destination_worksheet, :position
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'destination_worksheet' => :'DestinationWorksheet',
        
        # 
        :'position' => :'Position'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'destination_worksheet' => :'String',
        :'position' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'DestinationWorksheet']
        self.destination_worksheet = attributes[:'DestinationWorksheet']
      end
      
      if attributes[:'Position']
        self.position = attributes[:'Position']
      end
      
    end

  end
end
