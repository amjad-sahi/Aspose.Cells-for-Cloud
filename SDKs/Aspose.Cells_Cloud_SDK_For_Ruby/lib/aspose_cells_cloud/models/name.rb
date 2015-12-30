module AsposeCellsCloud
  # 
  class Name < BaseObject
    attr_accessor :comment, :worksheet_index, :is_referred, :is_visible, :r1_c1_refers_to, :refers_to, :text, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'comment' => :'Comment',
        
        # 
        :'worksheet_index' => :'WorksheetIndex',
        
        # 
        :'is_referred' => :'IsReferred',
        
        # 
        :'is_visible' => :'IsVisible',
        
        # 
        :'r1_c1_refers_to' => :'R1C1RefersTo',
        
        # 
        :'refers_to' => :'RefersTo',
        
        # 
        :'text' => :'Text',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'comment' => :'String',
        :'worksheet_index' => :'Integer',
        :'is_referred' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'r1_c1_refers_to' => :'String',
        :'refers_to' => :'String',
        :'text' => :'String',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Comment']
        self.comment = attributes[:'Comment']
      end
      
      if attributes[:'WorksheetIndex']
        self.worksheet_index = attributes[:'WorksheetIndex']
      end
      
      if attributes[:'IsReferred']
        self.is_referred = attributes[:'IsReferred']
      end
      
      if attributes[:'IsVisible']
        self.is_visible = attributes[:'IsVisible']
      end
      
      if attributes[:'R1C1RefersTo']
        self.r1_c1_refers_to = attributes[:'R1C1RefersTo']
      end
      
      if attributes[:'RefersTo']
        self.refers_to = attributes[:'RefersTo']
      end
      
      if attributes[:'Text']
        self.text = attributes[:'Text']
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
