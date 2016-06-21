module AsposeCellsCloud
  # 
  class FilterColumn < BaseObject
    attr_accessor :field_index, :filter_type, :multiple_filters, :color_filter, :custom_filters, :dynamic_filter, :icon_filter, :top10_filter, :visibledropdown
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'field_index' => :'FieldIndex',
        
        # 
        :'filter_type' => :'FilterType',
        
        # 
        :'multiple_filters' => :'MultipleFilters',
        
        # 
        :'color_filter' => :'ColorFilter',
        
        # 
        :'custom_filters' => :'CustomFilters',
        
        # 
        :'dynamic_filter' => :'DynamicFilter',
        
        # 
        :'icon_filter' => :'IconFilter',
        
        # 
        :'top10_filter' => :'Top10Filter',
        
        # 
        :'visibledropdown' => :'Visibledropdown'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'field_index' => :'Integer',
        :'filter_type' => :'String',
        :'multiple_filters' => :'MultipleFilters',
        :'color_filter' => :'ColorFilter',
        :'custom_filters' => :'Array<CustomFilter>',
        :'dynamic_filter' => :'DynamicFilter',
        :'icon_filter' => :'IconFilter',
        :'top10_filter' => :'Top10Filter',
        :'visibledropdown' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FieldIndex']
        self.field_index = attributes[:'FieldIndex']
      end
      
      if attributes[:'FilterType']
        self.filter_type = attributes[:'FilterType']
      end
      
      if attributes[:'MultipleFilters']
        self.multiple_filters = attributes[:'MultipleFilters']
      end
      
      if attributes[:'ColorFilter']
        self.color_filter = attributes[:'ColorFilter']
      end
      
      if attributes[:'CustomFilters']
        if (value = attributes[:'CustomFilters']).is_a?(Array)
          self.custom_filters = value
        end
      end
      
      if attributes[:'DynamicFilter']
        self.dynamic_filter = attributes[:'DynamicFilter']
      end
      
      if attributes[:'IconFilter']
        self.icon_filter = attributes[:'IconFilter']
      end
      
      if attributes[:'Top10Filter']
        self.top10_filter = attributes[:'Top10Filter']
      end
      
      if attributes[:'Visibledropdown']
        self.visibledropdown = attributes[:'Visibledropdown']
      end
      
    end

  end
end
