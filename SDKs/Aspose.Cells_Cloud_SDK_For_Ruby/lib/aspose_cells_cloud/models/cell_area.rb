module AsposeCellsCloud
  # 
  class CellArea < BaseObject
    attr_accessor :end_column, :end_row, :start_column, :start_row
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'end_column' => :'EndColumn',
        
        # 
        :'end_row' => :'EndRow',
        
        # 
        :'start_column' => :'StartColumn',
        
        # 
        :'start_row' => :'StartRow'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'end_column' => :'Integer',
        :'end_row' => :'Integer',
        :'start_column' => :'Integer',
        :'start_row' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'EndColumn']
        self.end_column = attributes[:'EndColumn']
      end
      
      if attributes[:'EndRow']
        self.end_row = attributes[:'EndRow']
      end
      
      if attributes[:'StartColumn']
        self.start_column = attributes[:'StartColumn']
      end
      
      if attributes[:'StartRow']
        self.start_row = attributes[:'StartRow']
      end
      
    end

  end
end
