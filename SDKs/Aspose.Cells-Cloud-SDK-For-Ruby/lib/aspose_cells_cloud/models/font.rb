module AsposeCellsCloud
  # 
  class Font < BaseObject
    attr_accessor :color, :double_size, :is_bold, :is_italic, :is_strikeout, :is_subscript, :is_superscript, :name, :size, :underline
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'color' => :'Color',
        
        # 
        :'double_size' => :'DoubleSize',
        
        # 
        :'is_bold' => :'IsBold',
        
        # 
        :'is_italic' => :'IsItalic',
        
        # 
        :'is_strikeout' => :'IsStrikeout',
        
        # 
        :'is_subscript' => :'IsSubscript',
        
        # 
        :'is_superscript' => :'IsSuperscript',
        
        # 
        :'name' => :'Name',
        
        # 
        :'size' => :'Size',
        
        # 
        :'underline' => :'Underline'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'color' => :'Color',
        :'double_size' => :'Float',
        :'is_bold' => :'BOOLEAN',
        :'is_italic' => :'BOOLEAN',
        :'is_strikeout' => :'BOOLEAN',
        :'is_subscript' => :'BOOLEAN',
        :'is_superscript' => :'BOOLEAN',
        :'name' => :'String',
        :'size' => :'Integer',
        :'underline' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Color']
        self.color = attributes[:'Color']
      end
      
      if attributes[:'DoubleSize']
        self.double_size = attributes[:'DoubleSize']
      end
      
      if attributes[:'IsBold']
        self.is_bold = attributes[:'IsBold']
      end
      
      if attributes[:'IsItalic']
        self.is_italic = attributes[:'IsItalic']
      end
      
      if attributes[:'IsStrikeout']
        self.is_strikeout = attributes[:'IsStrikeout']
      end
      
      if attributes[:'IsSubscript']
        self.is_subscript = attributes[:'IsSubscript']
      end
      
      if attributes[:'IsSuperscript']
        self.is_superscript = attributes[:'IsSuperscript']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Size']
        self.size = attributes[:'Size']
      end
      
      if attributes[:'Underline']
        self.underline = attributes[:'Underline']
      end
      
    end

  end
end
