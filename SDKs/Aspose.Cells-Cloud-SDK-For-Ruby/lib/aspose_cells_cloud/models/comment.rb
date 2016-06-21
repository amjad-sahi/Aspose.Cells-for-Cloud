module AsposeCellsCloud
  # 
  class Comment < BaseObject
    attr_accessor :cell_name, :author, :html_note, :note, :auto_size, :is_visible, :width, :height, :text_horizontal_alignment, :text_orientation_type, :text_vertical_alignment, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'cell_name' => :'CellName',
        
        # 
        :'author' => :'Author',
        
        # 
        :'html_note' => :'HtmlNote',
        
        # 
        :'note' => :'Note',
        
        # 
        :'auto_size' => :'AutoSize',
        
        # 
        :'is_visible' => :'IsVisible',
        
        # 
        :'width' => :'Width',
        
        # 
        :'height' => :'Height',
        
        # 
        :'text_horizontal_alignment' => :'TextHorizontalAlignment',
        
        # 
        :'text_orientation_type' => :'TextOrientationType',
        
        # 
        :'text_vertical_alignment' => :'TextVerticalAlignment',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'cell_name' => :'String',
        :'author' => :'String',
        :'html_note' => :'String',
        :'note' => :'String',
        :'auto_size' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'text_horizontal_alignment' => :'String',
        :'text_orientation_type' => :'String',
        :'text_vertical_alignment' => :'String',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'CellName']
        self.cell_name = attributes[:'CellName']
      end
      
      if attributes[:'Author']
        self.author = attributes[:'Author']
      end
      
      if attributes[:'HtmlNote']
        self.html_note = attributes[:'HtmlNote']
      end
      
      if attributes[:'Note']
        self.note = attributes[:'Note']
      end
      
      if attributes[:'AutoSize']
        self.auto_size = attributes[:'AutoSize']
      end
      
      if attributes[:'IsVisible']
        self.is_visible = attributes[:'IsVisible']
      end
      
      if attributes[:'Width']
        self.width = attributes[:'Width']
      end
      
      if attributes[:'Height']
        self.height = attributes[:'Height']
      end
      
      if attributes[:'TextHorizontalAlignment']
        self.text_horizontal_alignment = attributes[:'TextHorizontalAlignment']
      end
      
      if attributes[:'TextOrientationType']
        self.text_orientation_type = attributes[:'TextOrientationType']
      end
      
      if attributes[:'TextVerticalAlignment']
        self.text_vertical_alignment = attributes[:'TextVerticalAlignment']
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
