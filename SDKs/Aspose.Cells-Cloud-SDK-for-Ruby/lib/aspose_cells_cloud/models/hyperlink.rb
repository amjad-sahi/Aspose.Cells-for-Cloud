module AsposeCellsCloud
  # 
  class Hyperlink < BaseObject
    attr_accessor :address, :area, :screen_tip, :text_to_display, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'address' => :'Address',
        
        # 
        :'area' => :'Area',
        
        # 
        :'screen_tip' => :'ScreenTip',
        
        # 
        :'text_to_display' => :'TextToDisplay',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'address' => :'String',
        :'area' => :'CellArea',
        :'screen_tip' => :'String',
        :'text_to_display' => :'String',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Address']
        self.address = attributes[:'Address']
      end
      
      if attributes[:'Area']
        self.area = attributes[:'Area']
      end
      
      if attributes[:'ScreenTip']
        self.screen_tip = attributes[:'ScreenTip']
      end
      
      if attributes[:'TextToDisplay']
        self.text_to_display = attributes[:'TextToDisplay']
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
