module AsposeCellsCloud
  # 
  class DrawingOleObject < BaseObject
    attr_accessor :display_as_icon, :file_format_type, :image_source_full_name, :is_auto_size, :is_link, :prog_id, :source_full_name, :name, :mso_drawing_type, :auto_shape_type, :placement, :upper_left_row, :top, :upper_left_column, :left, :lower_right_row, :bottom, :lower_right_column, :right, :width, :height, :x, :y, :rotation_angle, :html_text, :text, :alternative_text, :text_horizontal_alignment, :text_horizontal_overflow, :text_orientation_type, :text_vertical_alignment, :text_vertical_overflow, :is_group, :is_hidden, :is_lock_aspect_ratio, :is_locked, :is_printable, :is_text_wrapped, :is_word_art, :linked_cell, :z_order_position, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'display_as_icon' => :'DisplayAsIcon',
        
        # 
        :'file_format_type' => :'FileFormatType',
        
        # 
        :'image_source_full_name' => :'ImageSourceFullName',
        
        # 
        :'is_auto_size' => :'IsAutoSize',
        
        # 
        :'is_link' => :'IsLink',
        
        # 
        :'prog_id' => :'ProgID',
        
        # 
        :'source_full_name' => :'SourceFullName',
        
        # 
        :'name' => :'Name',
        
        # 
        :'mso_drawing_type' => :'MsoDrawingType',
        
        # 
        :'auto_shape_type' => :'AutoShapeType',
        
        # 
        :'placement' => :'Placement',
        
        # 
        :'upper_left_row' => :'UpperLeftRow',
        
        # 
        :'top' => :'Top',
        
        # 
        :'upper_left_column' => :'UpperLeftColumn',
        
        # 
        :'left' => :'Left',
        
        # 
        :'lower_right_row' => :'LowerRightRow',
        
        # 
        :'bottom' => :'Bottom',
        
        # 
        :'lower_right_column' => :'LowerRightColumn',
        
        # 
        :'right' => :'Right',
        
        # 
        :'width' => :'Width',
        
        # 
        :'height' => :'Height',
        
        # 
        :'x' => :'X',
        
        # 
        :'y' => :'Y',
        
        # 
        :'rotation_angle' => :'RotationAngle',
        
        # 
        :'html_text' => :'HtmlText',
        
        # 
        :'text' => :'Text',
        
        # 
        :'alternative_text' => :'AlternativeText',
        
        # 
        :'text_horizontal_alignment' => :'TextHorizontalAlignment',
        
        # 
        :'text_horizontal_overflow' => :'TextHorizontalOverflow',
        
        # 
        :'text_orientation_type' => :'TextOrientationType',
        
        # 
        :'text_vertical_alignment' => :'TextVerticalAlignment',
        
        # 
        :'text_vertical_overflow' => :'TextVerticalOverflow',
        
        # 
        :'is_group' => :'IsGroup',
        
        # 
        :'is_hidden' => :'IsHidden',
        
        # 
        :'is_lock_aspect_ratio' => :'IsLockAspectRatio',
        
        # 
        :'is_locked' => :'IsLocked',
        
        # 
        :'is_printable' => :'IsPrintable',
        
        # 
        :'is_text_wrapped' => :'IsTextWrapped',
        
        # 
        :'is_word_art' => :'IsWordArt',
        
        # 
        :'linked_cell' => :'LinkedCell',
        
        # 
        :'z_order_position' => :'ZOrderPosition',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'display_as_icon' => :'BOOLEAN',
        :'file_format_type' => :'String',
        :'image_source_full_name' => :'String',
        :'is_auto_size' => :'BOOLEAN',
        :'is_link' => :'BOOLEAN',
        :'prog_id' => :'String',
        :'source_full_name' => :'String',
        :'name' => :'String',
        :'mso_drawing_type' => :'String',
        :'auto_shape_type' => :'String',
        :'placement' => :'String',
        :'upper_left_row' => :'Integer',
        :'top' => :'Integer',
        :'upper_left_column' => :'Integer',
        :'left' => :'Integer',
        :'lower_right_row' => :'Integer',
        :'bottom' => :'Integer',
        :'lower_right_column' => :'Integer',
        :'right' => :'Integer',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer',
        :'rotation_angle' => :'Float',
        :'html_text' => :'String',
        :'text' => :'String',
        :'alternative_text' => :'String',
        :'text_horizontal_alignment' => :'String',
        :'text_horizontal_overflow' => :'String',
        :'text_orientation_type' => :'String',
        :'text_vertical_alignment' => :'String',
        :'text_vertical_overflow' => :'String',
        :'is_group' => :'BOOLEAN',
        :'is_hidden' => :'BOOLEAN',
        :'is_lock_aspect_ratio' => :'BOOLEAN',
        :'is_locked' => :'BOOLEAN',
        :'is_printable' => :'BOOLEAN',
        :'is_text_wrapped' => :'BOOLEAN',
        :'is_word_art' => :'BOOLEAN',
        :'linked_cell' => :'String',
        :'z_order_position' => :'Integer',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'DisplayAsIcon']
        self.display_as_icon = attributes[:'DisplayAsIcon']
      end
      
      if attributes[:'FileFormatType']
        self.file_format_type = attributes[:'FileFormatType']
      end
      
      if attributes[:'ImageSourceFullName']
        self.image_source_full_name = attributes[:'ImageSourceFullName']
      end
      
      if attributes[:'IsAutoSize']
        self.is_auto_size = attributes[:'IsAutoSize']
      end
      
      if attributes[:'IsLink']
        self.is_link = attributes[:'IsLink']
      end
      
      if attributes[:'ProgID']
        self.prog_id = attributes[:'ProgID']
      end
      
      if attributes[:'SourceFullName']
        self.source_full_name = attributes[:'SourceFullName']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'MsoDrawingType']
        self.mso_drawing_type = attributes[:'MsoDrawingType']
      end
      
      if attributes[:'AutoShapeType']
        self.auto_shape_type = attributes[:'AutoShapeType']
      end
      
      if attributes[:'Placement']
        self.placement = attributes[:'Placement']
      end
      
      if attributes[:'UpperLeftRow']
        self.upper_left_row = attributes[:'UpperLeftRow']
      end
      
      if attributes[:'Top']
        self.top = attributes[:'Top']
      end
      
      if attributes[:'UpperLeftColumn']
        self.upper_left_column = attributes[:'UpperLeftColumn']
      end
      
      if attributes[:'Left']
        self.left = attributes[:'Left']
      end
      
      if attributes[:'LowerRightRow']
        self.lower_right_row = attributes[:'LowerRightRow']
      end
      
      if attributes[:'Bottom']
        self.bottom = attributes[:'Bottom']
      end
      
      if attributes[:'LowerRightColumn']
        self.lower_right_column = attributes[:'LowerRightColumn']
      end
      
      if attributes[:'Right']
        self.right = attributes[:'Right']
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
      
      if attributes[:'RotationAngle']
        self.rotation_angle = attributes[:'RotationAngle']
      end
      
      if attributes[:'HtmlText']
        self.html_text = attributes[:'HtmlText']
      end
      
      if attributes[:'Text']
        self.text = attributes[:'Text']
      end
      
      if attributes[:'AlternativeText']
        self.alternative_text = attributes[:'AlternativeText']
      end
      
      if attributes[:'TextHorizontalAlignment']
        self.text_horizontal_alignment = attributes[:'TextHorizontalAlignment']
      end
      
      if attributes[:'TextHorizontalOverflow']
        self.text_horizontal_overflow = attributes[:'TextHorizontalOverflow']
      end
      
      if attributes[:'TextOrientationType']
        self.text_orientation_type = attributes[:'TextOrientationType']
      end
      
      if attributes[:'TextVerticalAlignment']
        self.text_vertical_alignment = attributes[:'TextVerticalAlignment']
      end
      
      if attributes[:'TextVerticalOverflow']
        self.text_vertical_overflow = attributes[:'TextVerticalOverflow']
      end
      
      if attributes[:'IsGroup']
        self.is_group = attributes[:'IsGroup']
      end
      
      if attributes[:'IsHidden']
        self.is_hidden = attributes[:'IsHidden']
      end
      
      if attributes[:'IsLockAspectRatio']
        self.is_lock_aspect_ratio = attributes[:'IsLockAspectRatio']
      end
      
      if attributes[:'IsLocked']
        self.is_locked = attributes[:'IsLocked']
      end
      
      if attributes[:'IsPrintable']
        self.is_printable = attributes[:'IsPrintable']
      end
      
      if attributes[:'IsTextWrapped']
        self.is_text_wrapped = attributes[:'IsTextWrapped']
      end
      
      if attributes[:'IsWordArt']
        self.is_word_art = attributes[:'IsWordArt']
      end
      
      if attributes[:'LinkedCell']
        self.linked_cell = attributes[:'LinkedCell']
      end
      
      if attributes[:'ZOrderPosition']
        self.z_order_position = attributes[:'ZOrderPosition']
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
