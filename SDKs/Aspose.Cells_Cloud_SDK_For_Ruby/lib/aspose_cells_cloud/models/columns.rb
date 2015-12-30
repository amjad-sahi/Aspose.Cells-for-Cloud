module AsposeCellsCloud
  # 
  class Columns < BaseObject
    attr_accessor :max_column, :columns_count, :columns_list, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'max_column' => :'MaxColumn',
        
        # 
        :'columns_count' => :'ColumnsCount',
        
        # 
        :'columns_list' => :'ColumnsList',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'max_column' => :'Integer',
        :'columns_count' => :'Integer',
        :'columns_list' => :'Array<LinkElement>',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'MaxColumn']
        self.max_column = attributes[:'MaxColumn']
      end
      
      if attributes[:'ColumnsCount']
        self.columns_count = attributes[:'ColumnsCount']
      end
      
      if attributes[:'ColumnsList']
        if (value = attributes[:'ColumnsList']).is_a?(Array)
          self.columns_list = value
        end
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
