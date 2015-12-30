module AsposeCellsCloud
  # 
  class AutoFilter < BaseObject
    attr_accessor :filter_columns, :range, :sorter, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'filter_columns' => :'FilterColumns',
        
        # 
        :'range' => :'Range',
        
        # 
        :'sorter' => :'Sorter',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'filter_columns' => :'Array<FilterColumn>',
        :'range' => :'String',
        :'sorter' => :'DataSorter',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FilterColumns']
        if (value = attributes[:'FilterColumns']).is_a?(Array)
          self.filter_columns = value
        end
      end
      
      if attributes[:'Range']
        self.range = attributes[:'Range']
      end
      
      if attributes[:'Sorter']
        self.sorter = attributes[:'Sorter']
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
