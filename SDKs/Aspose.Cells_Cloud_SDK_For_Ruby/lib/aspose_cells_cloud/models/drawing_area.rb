module AsposeCellsCloud
  # 
  class DrawingArea < BaseObject
    attr_accessor :background_color, :fill_format, :foreground_color, :formatting, :invert_if_negative, :transparency
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'background_color' => :'BackgroundColor',
        
        # 
        :'fill_format' => :'FillFormat',
        
        # 
        :'foreground_color' => :'ForegroundColor',
        
        # 
        :'formatting' => :'Formatting',
        
        # 
        :'invert_if_negative' => :'InvertIfNegative',
        
        # 
        :'transparency' => :'Transparency'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'background_color' => :'Color',
        :'fill_format' => :'DrawingFillFormat',
        :'foreground_color' => :'Color',
        :'formatting' => :'String',
        :'invert_if_negative' => :'BOOLEAN',
        :'transparency' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'BackgroundColor']
        self.background_color = attributes[:'BackgroundColor']
      end
      
      if attributes[:'FillFormat']
        self.fill_format = attributes[:'FillFormat']
      end
      
      if attributes[:'ForegroundColor']
        self.foreground_color = attributes[:'ForegroundColor']
      end
      
      if attributes[:'Formatting']
        self.formatting = attributes[:'Formatting']
      end
      
      if attributes[:'InvertIfNegative']
        self.invert_if_negative = attributes[:'InvertIfNegative']
      end
      
      if attributes[:'Transparency']
        self.transparency = attributes[:'Transparency']
      end
      
    end

  end
end
