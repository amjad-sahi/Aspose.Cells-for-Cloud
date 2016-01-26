module AsposeCellsCloud
  # 
  class DateTimeGroupItem < BaseObject
    attr_accessor :date_time_grouping_type, :day, :hour, :minute, :month, :second, :year
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'date_time_grouping_type' => :'DateTimeGroupingType',
        
        # 
        :'day' => :'Day',
        
        # 
        :'hour' => :'Hour',
        
        # 
        :'minute' => :'Minute',
        
        # 
        :'month' => :'Month',
        
        # 
        :'second' => :'Second',
        
        # 
        :'year' => :'Year'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'date_time_grouping_type' => :'String',
        :'day' => :'Integer',
        :'hour' => :'Integer',
        :'minute' => :'Integer',
        :'month' => :'Integer',
        :'second' => :'Integer',
        :'year' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'DateTimeGroupingType']
        self.date_time_grouping_type = attributes[:'DateTimeGroupingType']
      end
      
      if attributes[:'Day']
        self.day = attributes[:'Day']
      end
      
      if attributes[:'Hour']
        self.hour = attributes[:'Hour']
      end
      
      if attributes[:'Minute']
        self.minute = attributes[:'Minute']
      end
      
      if attributes[:'Month']
        self.month = attributes[:'Month']
      end
      
      if attributes[:'Second']
        self.second = attributes[:'Second']
      end
      
      if attributes[:'Year']
        self.year = attributes[:'Year']
      end
      
    end

  end
end
