module AsposeCellsCloud
  # 
  class DrawingTilePicOption < BaseObject
    attr_accessor :offset_x, :offset_y, :scale_x, :scale_y, :alignment_type, :mirror_type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'offset_x' => :'OffsetX',
        
        # 
        :'offset_y' => :'OffsetY',
        
        # 
        :'scale_x' => :'ScaleX',
        
        # 
        :'scale_y' => :'ScaleY',
        
        # 
        :'alignment_type' => :'AlignmentType',
        
        # 
        :'mirror_type' => :'MirrorType'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'offset_x' => :'Float',
        :'offset_y' => :'Float',
        :'scale_x' => :'Float',
        :'scale_y' => :'Float',
        :'alignment_type' => :'String',
        :'mirror_type' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'OffsetX']
        self.offset_x = attributes[:'OffsetX']
      end
      
      if attributes[:'OffsetY']
        self.offset_y = attributes[:'OffsetY']
      end
      
      if attributes[:'ScaleX']
        self.scale_x = attributes[:'ScaleX']
      end
      
      if attributes[:'ScaleY']
        self.scale_y = attributes[:'ScaleY']
      end
      
      if attributes[:'AlignmentType']
        self.alignment_type = attributes[:'AlignmentType']
      end
      
      if attributes[:'MirrorType']
        self.mirror_type = attributes[:'MirrorType']
      end
      
    end

  end
end
