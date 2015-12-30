module AsposeCellsCloud
  # 
  class DrawingLine < BaseObject
    attr_accessor :begin_arrow_length, :begin_arrow_width, :begin_type, :cap_type, :color, :compound_type, :dash_type, :end_arrow_length, :end_arrow_width, :end_type, :gradient_fill, :is_auto, :is_automatic_color, :is_visible, :join_type, :style, :transparency, :weight, :weight_pt
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'begin_arrow_length' => :'BeginArrowLength',
        
        # 
        :'begin_arrow_width' => :'BeginArrowWidth',
        
        # 
        :'begin_type' => :'BeginType',
        
        # 
        :'cap_type' => :'CapType',
        
        # 
        :'color' => :'Color',
        
        # 
        :'compound_type' => :'CompoundType',
        
        # 
        :'dash_type' => :'DashType',
        
        # 
        :'end_arrow_length' => :'EndArrowLength',
        
        # 
        :'end_arrow_width' => :'EndArrowWidth',
        
        # 
        :'end_type' => :'EndType',
        
        # 
        :'gradient_fill' => :'GradientFill',
        
        # 
        :'is_auto' => :'IsAuto',
        
        # 
        :'is_automatic_color' => :'IsAutomaticColor',
        
        # 
        :'is_visible' => :'IsVisible',
        
        # 
        :'join_type' => :'JoinType',
        
        # 
        :'style' => :'Style',
        
        # 
        :'transparency' => :'Transparency',
        
        # 
        :'weight' => :'Weight',
        
        # 
        :'weight_pt' => :'WeightPt'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'begin_arrow_length' => :'String',
        :'begin_arrow_width' => :'String',
        :'begin_type' => :'String',
        :'cap_type' => :'String',
        :'color' => :'Color',
        :'compound_type' => :'String',
        :'dash_type' => :'String',
        :'end_arrow_length' => :'String',
        :'end_arrow_width' => :'String',
        :'end_type' => :'String',
        :'gradient_fill' => :'DrawingGradientFill',
        :'is_auto' => :'BOOLEAN',
        :'is_automatic_color' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'join_type' => :'String',
        :'style' => :'String',
        :'transparency' => :'Float',
        :'weight' => :'String',
        :'weight_pt' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'BeginArrowLength']
        self.begin_arrow_length = attributes[:'BeginArrowLength']
      end
      
      if attributes[:'BeginArrowWidth']
        self.begin_arrow_width = attributes[:'BeginArrowWidth']
      end
      
      if attributes[:'BeginType']
        self.begin_type = attributes[:'BeginType']
      end
      
      if attributes[:'CapType']
        self.cap_type = attributes[:'CapType']
      end
      
      if attributes[:'Color']
        self.color = attributes[:'Color']
      end
      
      if attributes[:'CompoundType']
        self.compound_type = attributes[:'CompoundType']
      end
      
      if attributes[:'DashType']
        self.dash_type = attributes[:'DashType']
      end
      
      if attributes[:'EndArrowLength']
        self.end_arrow_length = attributes[:'EndArrowLength']
      end
      
      if attributes[:'EndArrowWidth']
        self.end_arrow_width = attributes[:'EndArrowWidth']
      end
      
      if attributes[:'EndType']
        self.end_type = attributes[:'EndType']
      end
      
      if attributes[:'GradientFill']
        self.gradient_fill = attributes[:'GradientFill']
      end
      
      if attributes[:'IsAuto']
        self.is_auto = attributes[:'IsAuto']
      end
      
      if attributes[:'IsAutomaticColor']
        self.is_automatic_color = attributes[:'IsAutomaticColor']
      end
      
      if attributes[:'IsVisible']
        self.is_visible = attributes[:'IsVisible']
      end
      
      if attributes[:'JoinType']
        self.join_type = attributes[:'JoinType']
      end
      
      if attributes[:'Style']
        self.style = attributes[:'Style']
      end
      
      if attributes[:'Transparency']
        self.transparency = attributes[:'Transparency']
      end
      
      if attributes[:'Weight']
        self.weight = attributes[:'Weight']
      end
      
      if attributes[:'WeightPt']
        self.weight_pt = attributes[:'WeightPt']
      end
      
    end

  end
end
