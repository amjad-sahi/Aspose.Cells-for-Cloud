module AsposeCellsCloud
  # 
  class Column < BaseObject
    attr_accessor :group_level, :index, :is_hidden, :width, :style, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'group_level' => :'GroupLevel',
        
        # 
        :'index' => :'Index',
        
        # 
        :'is_hidden' => :'IsHidden',
        
        # 
        :'width' => :'Width',
        
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
        :'index' => :'Integer',
        :'is_hidden' => :'BOOLEAN',
        :'width' => :'Float',
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
      
      if attributes[:'Index']
        self.index = attributes[:'Index']
      end
      
      if attributes[:'IsHidden']
        self.is_hidden = attributes[:'IsHidden']
      end
      
      if attributes[:'Width']
        self.width = attributes[:'Width']
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
