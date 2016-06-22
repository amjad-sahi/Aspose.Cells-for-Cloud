module AsposeCellsCloud
  # 
  class Worksheet < BaseObject
    attr_accessor :links, :display_right_to_left, :display_zeros, :first_visible_column, :first_visible_row, :name, :index, :is_gridlines_visible, :is_outline_shown, :is_page_break_preview, :is_visible, :is_protected, :is_row_column_headers_visible, :is_ruler_visible, :is_selected, :tab_color, :transition_entry, :transition_evaluation, :type, :view_type, :visibility_type, :zoom, :cells, :charts, :auto_shapes, :ole_objects, :comments, :pictures, :merged_cells, :validations, :conditional_formattings, :hyperlinks
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'links' => :'Links',
        
        # 
        :'display_right_to_left' => :'DisplayRightToLeft',
        
        # 
        :'display_zeros' => :'DisplayZeros',
        
        # 
        :'first_visible_column' => :'FirstVisibleColumn',
        
        # 
        :'first_visible_row' => :'FirstVisibleRow',
        
        # 
        :'name' => :'Name',
        
        # 
        :'index' => :'Index',
        
        # 
        :'is_gridlines_visible' => :'IsGridlinesVisible',
        
        # 
        :'is_outline_shown' => :'IsOutlineShown',
        
        # 
        :'is_page_break_preview' => :'IsPageBreakPreview',
        
        # 
        :'is_visible' => :'IsVisible',
        
        # 
        :'is_protected' => :'IsProtected',
        
        # 
        :'is_row_column_headers_visible' => :'IsRowColumnHeadersVisible',
        
        # 
        :'is_ruler_visible' => :'IsRulerVisible',
        
        # 
        :'is_selected' => :'IsSelected',
        
        # 
        :'tab_color' => :'TabColor',
        
        # 
        :'transition_entry' => :'TransitionEntry',
        
        # 
        :'transition_evaluation' => :'TransitionEvaluation',
        
        # 
        :'type' => :'Type',
        
        # 
        :'view_type' => :'ViewType',
        
        # 
        :'visibility_type' => :'VisibilityType',
        
        # 
        :'zoom' => :'Zoom',
        
        # 
        :'cells' => :'Cells',
        
        # 
        :'charts' => :'Charts',
        
        # 
        :'auto_shapes' => :'AutoShapes',
        
        # 
        :'ole_objects' => :'OleObjects',
        
        # 
        :'comments' => :'Comments',
        
        # 
        :'pictures' => :'Pictures',
        
        # 
        :'merged_cells' => :'MergedCells',
        
        # 
        :'validations' => :'Validations',
        
        # 
        :'conditional_formattings' => :'ConditionalFormattings',
        
        # 
        :'hyperlinks' => :'Hyperlinks'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'display_right_to_left' => :'BOOLEAN',
        :'display_zeros' => :'BOOLEAN',
        :'first_visible_column' => :'Integer',
        :'first_visible_row' => :'Integer',
        :'name' => :'String',
        :'index' => :'Integer',
        :'is_gridlines_visible' => :'BOOLEAN',
        :'is_outline_shown' => :'BOOLEAN',
        :'is_page_break_preview' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'is_protected' => :'BOOLEAN',
        :'is_row_column_headers_visible' => :'BOOLEAN',
        :'is_ruler_visible' => :'BOOLEAN',
        :'is_selected' => :'BOOLEAN',
        :'tab_color' => :'Color',
        :'transition_entry' => :'BOOLEAN',
        :'transition_evaluation' => :'BOOLEAN',
        :'type' => :'String',
        :'view_type' => :'String',
        :'visibility_type' => :'String',
        :'zoom' => :'Integer',
        :'cells' => :'LinkElement',
        :'charts' => :'LinkElement',
        :'auto_shapes' => :'LinkElement',
        :'ole_objects' => :'LinkElement',
        :'comments' => :'LinkElement',
        :'pictures' => :'LinkElement',
        :'merged_cells' => :'LinkElement',
        :'validations' => :'LinkElement',
        :'conditional_formattings' => :'LinkElement',
        :'hyperlinks' => :'LinkElement'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
      if attributes[:'DisplayRightToLeft']
        self.display_right_to_left = attributes[:'DisplayRightToLeft']
      end
      
      if attributes[:'DisplayZeros']
        self.display_zeros = attributes[:'DisplayZeros']
      end
      
      if attributes[:'FirstVisibleColumn']
        self.first_visible_column = attributes[:'FirstVisibleColumn']
      end
      
      if attributes[:'FirstVisibleRow']
        self.first_visible_row = attributes[:'FirstVisibleRow']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Index']
        self.index = attributes[:'Index']
      end
      
      if attributes[:'IsGridlinesVisible']
        self.is_gridlines_visible = attributes[:'IsGridlinesVisible']
      end
      
      if attributes[:'IsOutlineShown']
        self.is_outline_shown = attributes[:'IsOutlineShown']
      end
      
      if attributes[:'IsPageBreakPreview']
        self.is_page_break_preview = attributes[:'IsPageBreakPreview']
      end
      
      if attributes[:'IsVisible']
        self.is_visible = attributes[:'IsVisible']
      end
      
      if attributes[:'IsProtected']
        self.is_protected = attributes[:'IsProtected']
      end
      
      if attributes[:'IsRowColumnHeadersVisible']
        self.is_row_column_headers_visible = attributes[:'IsRowColumnHeadersVisible']
      end
      
      if attributes[:'IsRulerVisible']
        self.is_ruler_visible = attributes[:'IsRulerVisible']
      end
      
      if attributes[:'IsSelected']
        self.is_selected = attributes[:'IsSelected']
      end
      
      if attributes[:'TabColor']
        self.tab_color = attributes[:'TabColor']
      end
      
      if attributes[:'TransitionEntry']
        self.transition_entry = attributes[:'TransitionEntry']
      end
      
      if attributes[:'TransitionEvaluation']
        self.transition_evaluation = attributes[:'TransitionEvaluation']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'ViewType']
        self.view_type = attributes[:'ViewType']
      end
      
      if attributes[:'VisibilityType']
        self.visibility_type = attributes[:'VisibilityType']
      end
      
      if attributes[:'Zoom']
        self.zoom = attributes[:'Zoom']
      end
      
      if attributes[:'Cells']
        self.cells = attributes[:'Cells']
      end
      
      if attributes[:'Charts']
        self.charts = attributes[:'Charts']
      end
      
      if attributes[:'AutoShapes']
        self.auto_shapes = attributes[:'AutoShapes']
      end
      
      if attributes[:'OleObjects']
        self.ole_objects = attributes[:'OleObjects']
      end
      
      if attributes[:'Comments']
        self.comments = attributes[:'Comments']
      end
      
      if attributes[:'Pictures']
        self.pictures = attributes[:'Pictures']
      end
      
      if attributes[:'MergedCells']
        self.merged_cells = attributes[:'MergedCells']
      end
      
      if attributes[:'Validations']
        self.validations = attributes[:'Validations']
      end
      
      if attributes[:'ConditionalFormattings']
        self.conditional_formattings = attributes[:'ConditionalFormattings']
      end
      
      if attributes[:'Hyperlinks']
        self.hyperlinks = attributes[:'Hyperlinks']
      end
      
    end

  end
end
