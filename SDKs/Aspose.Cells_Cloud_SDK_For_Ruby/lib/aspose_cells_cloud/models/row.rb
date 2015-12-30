module AsposeCellsCloud
  # 
  class Row < BaseObject
    attr_accessor :group_level, :height, :index, :is_blank, :is_height_matched, :is_hidden, :style, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'group_level' => :'GroupLevel',
        
        # 
        :'height' => :'Height',
        
        # 
        :'index' => :'Index',
        
        # 
        :'is_blank' => :'IsBlank',
        
        # 
        :'is_height_matched' => :'IsHeightMatched',
        
        # 
        :'is_hidden' => :'IsHidden',
        
        # 
        :'style' => :'Style',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'group_level' => :'Integer',
        :'height' => :'Float',
        :'index' => :'Integer',
        :'is_blank' => :'BOOLEAN',
        :'is_height_matched' => :'BOOLEAN',
        :'is_hidden' => :'BOOLEAN',
        :'style' => :'LinkElement',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'GroupLevel']
        self.group_level = attributes[:'GroupLevel']
      end
      
      if attributes[:'Height']
        self.height = attributes[:'Height']
      end
      
      if attributes[:'Index']
        self.index = attributes[:'Index']
      end
      
      if attributes[:'IsBlank']
        self.is_blank = attributes[:'IsBlank']
      end
      
      if attributes[:'IsHeightMatched']
        self.is_height_matched = attributes[:'IsHeightMatched']
      end
      
      if attributes[:'IsHidden']
        self.is_hidden = attributes[:'IsHidden']
      end
      
      if attributes[:'Style']
        self.style = attributes[:'Style']
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
