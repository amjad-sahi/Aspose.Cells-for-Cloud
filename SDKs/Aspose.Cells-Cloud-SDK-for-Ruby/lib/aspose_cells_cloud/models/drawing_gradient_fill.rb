module AsposeCellsCloud
  # 
  class DrawingGradientFill < BaseObject
    attr_accessor :fill_type, :direction_type, :angle, :gradient_stops
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'fill_type' => :'FillType',
        
        # 
        :'direction_type' => :'DirectionType',
        
        # 
        :'angle' => :'Angle',
        
        # 
        :'gradient_stops' => :'GradientStops'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'fill_type' => :'String',
        :'direction_type' => :'String',
        :'angle' => :'Float',
        :'gradient_stops' => :'Array<DrawingGradientFillStop>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FillType']
        self.fill_type = attributes[:'FillType']
      end
      
      if attributes[:'DirectionType']
        self.direction_type = attributes[:'DirectionType']
      end
      
      if attributes[:'Angle']
        self.angle = attributes[:'Angle']
      end
      
      if attributes[:'GradientStops']
        if (value = attributes[:'GradientStops']).is_a?(Array)
          self.gradient_stops = value
        end
      end
      
    end

  end
end
