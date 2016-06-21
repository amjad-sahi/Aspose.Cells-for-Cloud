module AsposeCellsCloud
  # 
  class DrawingPatternFill < BaseObject
    attr_accessor :pattern, :background_cells_color, :foreground_cells_color, :foreground_color, :background_color, :back_transparency, :fore_transparency
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'pattern' => :'Pattern',
        
        # 
        :'background_cells_color' => :'BackgroundCellsColor',
        
        # 
        :'foreground_cells_color' => :'ForegroundCellsColor',
        
        # 
        :'foreground_color' => :'ForegroundColor',
        
        # 
        :'background_color' => :'BackgroundColor',
        
        # 
        :'back_transparency' => :'BackTransparency',
        
        # 
        :'fore_transparency' => :'ForeTransparency'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'pattern' => :'String',
        :'background_cells_color' => :'CellsColor',
        :'foreground_cells_color' => :'CellsColor',
        :'foreground_color' => :'Color',
        :'background_color' => :'Color',
        :'back_transparency' => :'Float',
        :'fore_transparency' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Pattern']
        self.pattern = attributes[:'Pattern']
      end
      
      if attributes[:'BackgroundCellsColor']
        self.background_cells_color = attributes[:'BackgroundCellsColor']
      end
      
      if attributes[:'ForegroundCellsColor']
        self.foreground_cells_color = attributes[:'ForegroundCellsColor']
      end
      
      if attributes[:'ForegroundColor']
        self.foreground_color = attributes[:'ForegroundColor']
      end
      
      if attributes[:'BackgroundColor']
        self.background_color = attributes[:'BackgroundColor']
      end
      
      if attributes[:'BackTransparency']
        self.back_transparency = attributes[:'BackTransparency']
      end
      
      if attributes[:'ForeTransparency']
        self.fore_transparency = attributes[:'ForeTransparency']
      end
      
    end

  end
end
