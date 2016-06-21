module AsposeCellsCloud
  # 
  class DrawingFillFormat < BaseObject
    attr_accessor :type, :solid_fill, :pattern_fill, :texture_fill, :gradient_fill, :image_data
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'type' => :'Type',
        
        # 
        :'solid_fill' => :'SolidFill',
        
        # 
        :'pattern_fill' => :'PatternFill',
        
        # 
        :'texture_fill' => :'TextureFill',
        
        # 
        :'gradient_fill' => :'GradientFill',
        
        # 
        :'image_data' => :'ImageData'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'type' => :'String',
        :'solid_fill' => :'DrawingSolidFill',
        :'pattern_fill' => :'DrawingPatternFill',
        :'texture_fill' => :'DrawingTextureFill',
        :'gradient_fill' => :'DrawingGradientFill',
        :'image_data' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'SolidFill']
        self.solid_fill = attributes[:'SolidFill']
      end
      
      if attributes[:'PatternFill']
        self.pattern_fill = attributes[:'PatternFill']
      end
      
      if attributes[:'TextureFill']
        self.texture_fill = attributes[:'TextureFill']
      end
      
      if attributes[:'GradientFill']
        self.gradient_fill = attributes[:'GradientFill']
      end
      
      if attributes[:'ImageData']
        self.image_data = attributes[:'ImageData']
      end
      
    end

  end
end
