module AsposeCellsCloud
  # 
  class Cells < BaseObject
    attr_accessor :max_row, :max_column, :cell_count, :rows, :columns, :cell_list, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'max_row' => :'MaxRow',
        
        # 
        :'max_column' => :'MaxColumn',
        
        # 
        :'cell_count' => :'CellCount',
        
        # 
        :'rows' => :'Rows',
        
        # 
        :'columns' => :'Columns',
        
        # 
        :'cell_list' => :'CellList',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'max_row' => :'Integer',
        :'max_column' => :'Integer',
        :'cell_count' => :'Integer',
        :'rows' => :'LinkElement',
        :'columns' => :'LinkElement',
        :'cell_list' => :'Array<LinkElement>',
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
      
      if attributes[:'MaxColumn']
        self.max_column = attributes[:'MaxColumn']
      end
      
      if attributes[:'CellCount']
        self.cell_count = attributes[:'CellCount']
      end
      
      if attributes[:'Rows']
        self.rows = attributes[:'Rows']
      end
      
      if attributes[:'Columns']
        self.columns = attributes[:'Columns']
      end
      
      if attributes[:'CellList']
        if (value = attributes[:'CellList']).is_a?(Array)
          self.cell_list = value
        end
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
