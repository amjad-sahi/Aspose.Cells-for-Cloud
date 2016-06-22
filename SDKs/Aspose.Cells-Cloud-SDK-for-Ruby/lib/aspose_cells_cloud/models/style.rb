module AsposeCellsCloud
  # 
  class Style < BaseObject
    attr_accessor :font, :name, :culture_custom, :custom, :background_color, :foreground_color, :is_formula_hidden, :is_date_time, :is_text_wrapped, :is_gradient, :is_locked, :is_percent, :shrink_to_fit, :indent_level, :number, :rotation_angle, :pattern, :text_direction, :vertical_alignment, :horizontal_alignment, :border_collection, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'font' => :'Font',
        
        # 
        :'name' => :'Name',
        
        # 
        :'culture_custom' => :'CultureCustom',
        
        # 
        :'custom' => :'Custom',
        
        # 
        :'background_color' => :'BackgroundColor',
        
        # 
        :'foreground_color' => :'ForegroundColor',
        
        # 
        :'is_formula_hidden' => :'IsFormulaHidden',
        
        # 
        :'is_date_time' => :'IsDateTime',
        
        # 
        :'is_text_wrapped' => :'IsTextWrapped',
        
        # 
        :'is_gradient' => :'IsGradient',
        
        # 
        :'is_locked' => :'IsLocked',
        
        # 
        :'is_percent' => :'IsPercent',
        
        # 
        :'shrink_to_fit' => :'ShrinkToFit',
        
        # 
        :'indent_level' => :'IndentLevel',
        
        # 
        :'number' => :'Number',
        
        # 
        :'rotation_angle' => :'RotationAngle',
        
        # 
        :'pattern' => :'Pattern',
        
        # 
        :'text_direction' => :'TextDirection',
        
        # 
        :'vertical_alignment' => :'VerticalAlignment',
        
        # 
        :'horizontal_alignment' => :'HorizontalAlignment',
        
        # 
        :'border_collection' => :'BorderCollection',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'font' => :'Font',
        :'name' => :'String',
        :'culture_custom' => :'String',
        :'custom' => :'String',
        :'background_color' => :'Color',
        :'foreground_color' => :'Color',
        :'is_formula_hidden' => :'BOOLEAN',
        :'is_date_time' => :'BOOLEAN',
        :'is_text_wrapped' => :'BOOLEAN',
        :'is_gradient' => :'BOOLEAN',
        :'is_locked' => :'BOOLEAN',
        :'is_percent' => :'BOOLEAN',
        :'shrink_to_fit' => :'BOOLEAN',
        :'indent_level' => :'Integer',
        :'number' => :'Integer',
        :'rotation_angle' => :'Integer',
        :'pattern' => :'String',
        :'text_direction' => :'String',
        :'vertical_alignment' => :'String',
        :'horizontal_alignment' => :'String',
        :'border_collection' => :'Array<Border>',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Font']
        self.font = attributes[:'Font']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'CultureCustom']
        self.culture_custom = attributes[:'CultureCustom']
      end
      
      if attributes[:'Custom']
        self.custom = attributes[:'Custom']
      end
      
      if attributes[:'BackgroundColor']
        self.background_color = attributes[:'BackgroundColor']
      end
      
      if attributes[:'ForegroundColor']
        self.foreground_color = attributes[:'ForegroundColor']
      end
      
      if attributes[:'IsFormulaHidden']
        self.is_formula_hidden = attributes[:'IsFormulaHidden']
      end
      
      if attributes[:'IsDateTime']
        self.is_date_time = attributes[:'IsDateTime']
      end
      
      if attributes[:'IsTextWrapped']
        self.is_text_wrapped = attributes[:'IsTextWrapped']
      end
      
      if attributes[:'IsGradient']
        self.is_gradient = attributes[:'IsGradient']
      end
      
      if attributes[:'IsLocked']
        self.is_locked = attributes[:'IsLocked']
      end
      
      if attributes[:'IsPercent']
        self.is_percent = attributes[:'IsPercent']
      end
      
      if attributes[:'ShrinkToFit']
        self.shrink_to_fit = attributes[:'ShrinkToFit']
      end
      
      if attributes[:'IndentLevel']
        self.indent_level = attributes[:'IndentLevel']
      end
      
      if attributes[:'Number']
        self.number = attributes[:'Number']
      end
      
      if attributes[:'RotationAngle']
        self.rotation_angle = attributes[:'RotationAngle']
      end
      
      if attributes[:'Pattern']
        self.pattern = attributes[:'Pattern']
      end
      
      if attributes[:'TextDirection']
        self.text_direction = attributes[:'TextDirection']
      end
      
      if attributes[:'VerticalAlignment']
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end
      
      if attributes[:'HorizontalAlignment']
        self.horizontal_alignment = attributes[:'HorizontalAlignment']
      end
      
      if attributes[:'BorderCollection']
        if (value = attributes[:'BorderCollection']).is_a?(Array)
          self.border_collection = value
        end
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
