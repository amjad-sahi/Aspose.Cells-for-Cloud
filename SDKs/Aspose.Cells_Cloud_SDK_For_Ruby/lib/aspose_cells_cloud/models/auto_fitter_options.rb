module AsposeCellsCloud
  # 
  class AutoFitterOptions < BaseObject
    attr_accessor :auto_fit_merged_cells, :ignore_hidden, :only_auto
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'auto_fit_merged_cells' => :'AutoFitMergedCells',
        
        # 
        :'ignore_hidden' => :'IgnoreHidden',
        
        # 
        :'only_auto' => :'OnlyAuto'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'auto_fit_merged_cells' => :'BOOLEAN',
        :'ignore_hidden' => :'BOOLEAN',
        :'only_auto' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'AutoFitMergedCells']
        self.auto_fit_merged_cells = attributes[:'AutoFitMergedCells']
      end
      
      if attributes[:'IgnoreHidden']
        self.ignore_hidden = attributes[:'IgnoreHidden']
      end
      
      if attributes[:'OnlyAuto']
        self.only_auto = attributes[:'OnlyAuto']
      end
      
    end

  end
end
