module AsposeCellsCloud
  # 
  class ChartsChartArea < BaseObject
    attr_accessor :area, :auto_scale_font, :background_mode, :border, :font, :is_automatic_size, :is_inner_mode, :shadow, :shape_properties, :width, :height, :x, :y, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'area' => :'Area',
        
        # 
        :'auto_scale_font' => :'AutoScaleFont',
        
        # 
        :'background_mode' => :'BackgroundMode',
        
        # 
        :'border' => :'Border',
        
        # 
        :'font' => :'Font',
        
        # 
        :'is_automatic_size' => :'IsAutomaticSize',
        
        # 
        :'is_inner_mode' => :'IsInnerMode',
        
        # 
        :'shadow' => :'Shadow',
        
        # 
        :'shape_properties' => :'ShapeProperties',
        
        # 
        :'width' => :'Width',
        
        # 
        :'height' => :'Height',
        
        # 
        :'x' => :'X',
        
        # 
        :'y' => :'Y',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'area' => :'DrawingArea',
        :'auto_scale_font' => :'BOOLEAN',
        :'background_mode' => :'String',
        :'border' => :'DrawingLine',
        :'font' => :'Font',
        :'is_automatic_size' => :'BOOLEAN',
        :'is_inner_mode' => :'BOOLEAN',
        :'shadow' => :'BOOLEAN',
        :'shape_properties' => :'Array<LinkElement>',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Area']
        self.area = attributes[:'Area']
      end
      
      if attributes[:'AutoScaleFont']
        self.auto_scale_font = attributes[:'AutoScaleFont']
      end
      
      if attributes[:'BackgroundMode']
        self.background_mode = attributes[:'BackgroundMode']
      end
      
      if attributes[:'Border']
        self.border = attributes[:'Border']
      end
      
      if attributes[:'Font']
        self.font = attributes[:'Font']
      end
      
      if attributes[:'IsAutomaticSize']
        self.is_automatic_size = attributes[:'IsAutomaticSize']
      end
      
      if attributes[:'IsInnerMode']
        self.is_inner_mode = attributes[:'IsInnerMode']
      end
      
      if attributes[:'Shadow']
        self.shadow = attributes[:'Shadow']
      end
      
      if attributes[:'ShapeProperties']
        if (value = attributes[:'ShapeProperties']).is_a?(Array)
          self.shape_properties = value
        end
      end
      
      if attributes[:'Width']
        self.width = attributes[:'Width']
      end
      
      if attributes[:'Height']
        self.height = attributes[:'Height']
      end
      
      if attributes[:'X']
        self.x = attributes[:'X']
      end
      
      if attributes[:'Y']
        self.y = attributes[:'Y']
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
