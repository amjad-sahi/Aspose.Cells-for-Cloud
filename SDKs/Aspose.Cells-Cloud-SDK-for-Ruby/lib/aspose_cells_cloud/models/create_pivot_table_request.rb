module AsposeCellsCloud
  # 
  class CreatePivotTableRequest < BaseObject
    attr_accessor :name, :source_data, :dest_cell_name, :use_same_source, :pivot_field_rows, :pivot_field_columns, :pivot_field_data
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'name' => :'Name',
        
        # 
        :'source_data' => :'SourceData',
        
        # 
        :'dest_cell_name' => :'DestCellName',
        
        # 
        :'use_same_source' => :'UseSameSource',
        
        # 
        :'pivot_field_rows' => :'PivotFieldRows',
        
        # 
        :'pivot_field_columns' => :'PivotFieldColumns',
        
        # 
        :'pivot_field_data' => :'PivotFieldData'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'String',
        :'source_data' => :'String',
        :'dest_cell_name' => :'String',
        :'use_same_source' => :'BOOLEAN',
        :'pivot_field_rows' => :'Array<Integer>',
        :'pivot_field_columns' => :'Array<Integer>',
        :'pivot_field_data' => :'Array<Integer>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'SourceData']
        self.source_data = attributes[:'SourceData']
      end
      
      if attributes[:'DestCellName']
        self.dest_cell_name = attributes[:'DestCellName']
      end
      
      if attributes[:'UseSameSource']
        self.use_same_source = attributes[:'UseSameSource']
      end
      
      if attributes[:'PivotFieldRows']
        if (value = attributes[:'PivotFieldRows']).is_a?(Array)
          self.pivot_field_rows = value
        end
      end
      
      if attributes[:'PivotFieldColumns']
        if (value = attributes[:'PivotFieldColumns']).is_a?(Array)
          self.pivot_field_columns = value
        end
      end
      
      if attributes[:'PivotFieldData']
        if (value = attributes[:'PivotFieldData']).is_a?(Array)
          self.pivot_field_data = value
        end
      end
      
    end

  end
end
