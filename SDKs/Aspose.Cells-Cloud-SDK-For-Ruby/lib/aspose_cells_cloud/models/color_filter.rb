module AsposeCellsCloud
  # 
  class ColorFilter < BaseObject
    attr_accessor :filter_by_fill_color
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'filter_by_fill_color' => :'FilterByFillColor'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'filter_by_fill_color' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FilterByFillColor']
        self.filter_by_fill_color = attributes[:'FilterByFillColor']
      end
      
    end

  end
end
