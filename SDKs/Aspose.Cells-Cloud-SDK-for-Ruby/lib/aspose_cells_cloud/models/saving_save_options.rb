module AsposeCellsCloud
  # 
  class SavingSaveOptions < BaseObject
    attr_accessor :cached_file_folder, :clear_data, :create_directory, :enable_http_compression, :refresh_chart_cache, :sort_names, :validate_merged_areas
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'cached_file_folder' => :'CachedFileFolder',
        
        # 
        :'clear_data' => :'ClearData',
        
        # 
        :'create_directory' => :'CreateDirectory',
        
        # 
        :'enable_http_compression' => :'EnableHTTPCompression',
        
        # 
        :'refresh_chart_cache' => :'RefreshChartCache',
        
        # 
        :'sort_names' => :'SortNames',
        
        # 
        :'validate_merged_areas' => :'ValidateMergedAreas'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'cached_file_folder' => :'String',
        :'clear_data' => :'BOOLEAN',
        :'create_directory' => :'BOOLEAN',
        :'enable_http_compression' => :'BOOLEAN',
        :'refresh_chart_cache' => :'BOOLEAN',
        :'sort_names' => :'BOOLEAN',
        :'validate_merged_areas' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'CachedFileFolder']
        self.cached_file_folder = attributes[:'CachedFileFolder']
      end
      
      if attributes[:'ClearData']
        self.clear_data = attributes[:'ClearData']
      end
      
      if attributes[:'CreateDirectory']
        self.create_directory = attributes[:'CreateDirectory']
      end
      
      if attributes[:'EnableHTTPCompression']
        self.enable_http_compression = attributes[:'EnableHTTPCompression']
      end
      
      if attributes[:'RefreshChartCache']
        self.refresh_chart_cache = attributes[:'RefreshChartCache']
      end
      
      if attributes[:'SortNames']
        self.sort_names = attributes[:'SortNames']
      end
      
      if attributes[:'ValidateMergedAreas']
        self.validate_merged_areas = attributes[:'ValidateMergedAreas']
      end
      
    end

  end
end
