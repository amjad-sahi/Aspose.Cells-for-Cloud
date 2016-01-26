module AsposeCellsCloud
  # 
  class DrawingTextureFill < BaseObject
    attr_accessor :type, :transparency, :scale, :tile_pic_option, :pic_format_option, :image
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'type' => :'Type',
        
        # 
        :'transparency' => :'Transparency',
        
        # 
        :'scale' => :'Scale',
        
        # 
        :'tile_pic_option' => :'TilePicOption',
        
        # 
        :'pic_format_option' => :'PicFormatOption',
        
        # 
        :'image' => :'Image'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'type' => :'String',
        :'transparency' => :'Float',
        :'scale' => :'Float',
        :'tile_pic_option' => :'DrawingTilePicOption',
        :'pic_format_option' => :'DrawingPicFormatOption',
        :'image' => :'LinkElement'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'Transparency']
        self.transparency = attributes[:'Transparency']
      end
      
      if attributes[:'Scale']
        self.scale = attributes[:'Scale']
      end
      
      if attributes[:'TilePicOption']
        self.tile_pic_option = attributes[:'TilePicOption']
      end
      
      if attributes[:'PicFormatOption']
        self.pic_format_option = attributes[:'PicFormatOption']
      end
      
      if attributes[:'Image']
        self.image = attributes[:'Image']
      end
      
    end

  end
end
