module AsposeCellsCloud
  # 
  class PivotPivotFilter < BaseObject
    attr_accessor :auto_filter, :evaluation_order, :field_index, :filter_type, :measure_fld_index, :member_property_field_index, :name, :value1, :value2
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'auto_filter' => :'AutoFilter',
        
        # 
        :'evaluation_order' => :'EvaluationOrder',
        
        # 
        :'field_index' => :'FieldIndex',
        
        # 
        :'filter_type' => :'FilterType',
        
        # 
        :'measure_fld_index' => :'MeasureFldIndex',
        
        # 
        :'member_property_field_index' => :'MemberPropertyFieldIndex',
        
        # 
        :'name' => :'Name',
        
        # 
        :'value1' => :'Value1',
        
        # 
        :'value2' => :'Value2'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'auto_filter' => :'AutoFilter',
        :'evaluation_order' => :'Integer',
        :'field_index' => :'Integer',
        :'filter_type' => :'String',
        :'measure_fld_index' => :'Integer',
        :'member_property_field_index' => :'Integer',
        :'name' => :'String',
        :'value1' => :'String',
        :'value2' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'AutoFilter']
        self.auto_filter = attributes[:'AutoFilter']
      end
      
      if attributes[:'EvaluationOrder']
        self.evaluation_order = attributes[:'EvaluationOrder']
      end
      
      if attributes[:'FieldIndex']
        self.field_index = attributes[:'FieldIndex']
      end
      
      if attributes[:'FilterType']
        self.filter_type = attributes[:'FilterType']
      end
      
      if attributes[:'MeasureFldIndex']
        self.measure_fld_index = attributes[:'MeasureFldIndex']
      end
      
      if attributes[:'MemberPropertyFieldIndex']
        self.member_property_field_index = attributes[:'MemberPropertyFieldIndex']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Value1']
        self.value1 = attributes[:'Value1']
      end
      
      if attributes[:'Value2']
        self.value2 = attributes[:'Value2']
      end
      
    end

  end
end
