module AsposeCellsCloud
  # 
  class MergedCells < BaseObject
    attr_accessor :count, :merged_cell_list, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'count' => :'Count',
        
        # 
        :'merged_cell_list' => :'MergedCellList',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'count' => :'Integer',
        :'merged_cell_list' => :'Array<LinkElement>',
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
      
      if attributes[:'MergedCellList']
        if (value = attributes[:'MergedCellList']).is_a?(Array)
          self.merged_cell_list = value
        end
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
