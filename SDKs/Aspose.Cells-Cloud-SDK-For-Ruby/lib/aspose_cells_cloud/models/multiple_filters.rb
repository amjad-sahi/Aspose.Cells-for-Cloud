module AsposeCellsCloud
  # 
  class MultipleFilters < BaseObject
    attr_accessor :match_blank, :multiple_filter_list
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'match_blank' => :'MatchBlank',
        
        # 
        :'multiple_filter_list' => :'MultipleFilterList'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'match_blank' => :'String',
        :'multiple_filter_list' => :'Array<DateTimeGroupItem>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'MatchBlank']
        self.match_blank = attributes[:'MatchBlank']
      end
      
      if attributes[:'MultipleFilterList']
        if (value = attributes[:'MultipleFilterList']).is_a?(Array)
          self.multiple_filter_list = value
        end
      end
      
    end

  end
end
