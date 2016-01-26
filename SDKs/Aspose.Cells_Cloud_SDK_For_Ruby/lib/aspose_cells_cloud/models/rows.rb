module AsposeCellsCloud
  # 
  class Rows < BaseObject
    attr_accessor :max_row, :rows_count, :rows_list, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'max_row' => :'MaxRow',
        
        # 
        :'rows_count' => :'RowsCount',
        
        # 
        :'rows_list' => :'RowsList',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'max_row' => :'Integer',
        :'rows_count' => :'Integer',
        :'rows_list' => :'Array<LinkElement>',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'MaxRow']
        self.max_row = attributes[:'MaxRow']
      end
      
      if attributes[:'RowsCount']
        self.rows_count = attributes[:'RowsCount']
      end
      
      if attributes[:'RowsList']
        if (value = attributes[:'RowsList']).is_a?(Array)
          self.rows_list = value
        end
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
