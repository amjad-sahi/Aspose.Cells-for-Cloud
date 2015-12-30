module AsposeCellsCloud
  # 
  class DataSorter < BaseObject
    attr_accessor :case_sensitive, :has_headers, :key_list, :sort_left_to_right
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'case_sensitive' => :'CaseSensitive',
        
        # 
        :'has_headers' => :'HasHeaders',
        
        # 
        :'key_list' => :'KeyList',
        
        # 
        :'sort_left_to_right' => :'SortLeftToRight'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'case_sensitive' => :'BOOLEAN',
        :'has_headers' => :'BOOLEAN',
        :'key_list' => :'Array<SortKey>',
        :'sort_left_to_right' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'CaseSensitive']
        self.case_sensitive = attributes[:'CaseSensitive']
      end
      
      if attributes[:'HasHeaders']
        self.has_headers = attributes[:'HasHeaders']
      end
      
      if attributes[:'KeyList']
        if (value = attributes[:'KeyList']).is_a?(Array)
          self.key_list = value
        end
      end
      
      if attributes[:'SortLeftToRight']
        self.sort_left_to_right = attributes[:'SortLeftToRight']
      end
      
    end

  end
end
