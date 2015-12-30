module AsposeCellsCloud
  # 
  class Workbook < BaseObject
    attr_accessor :file_name, :links, :worksheets, :default_style, :document_properties, :names, :settings, :is_write_protected, :is_protected, :is_encryption, :password
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'file_name' => :'FileName',
        
        # 
        :'links' => :'Links',
        
        # 
        :'worksheets' => :'Worksheets',
        
        # 
        :'default_style' => :'DefaultStyle',
        
        # 
        :'document_properties' => :'DocumentProperties',
        
        # 
        :'names' => :'Names',
        
        # 
        :'settings' => :'Settings',
        
        # 
        :'is_write_protected' => :'IsWriteProtected',
        
        # 
        :'is_protected' => :'IsProtected',
        
        # 
        :'is_encryption' => :'IsEncryption',
        
        # 
        :'password' => :'Password'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'file_name' => :'String',
        :'links' => :'Array<Link>',
        :'worksheets' => :'LinkElement',
        :'default_style' => :'LinkElement',
        :'document_properties' => :'LinkElement',
        :'names' => :'LinkElement',
        :'settings' => :'LinkElement',
        :'is_write_protected' => :'String',
        :'is_protected' => :'String',
        :'is_encryption' => :'String',
        :'password' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FileName']
        self.file_name = attributes[:'FileName']
      end
      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
      if attributes[:'Worksheets']
        self.worksheets = attributes[:'Worksheets']
      end
      
      if attributes[:'DefaultStyle']
        self.default_style = attributes[:'DefaultStyle']
      end
      
      if attributes[:'DocumentProperties']
        self.document_properties = attributes[:'DocumentProperties']
      end
      
      if attributes[:'Names']
        self.names = attributes[:'Names']
      end
      
      if attributes[:'Settings']
        self.settings = attributes[:'Settings']
      end
      
      if attributes[:'IsWriteProtected']
        self.is_write_protected = attributes[:'IsWriteProtected']
      end
      
      if attributes[:'IsProtected']
        self.is_protected = attributes[:'IsProtected']
      end
      
      if attributes[:'IsEncryption']
        self.is_encryption = attributes[:'IsEncryption']
      end
      
      if attributes[:'Password']
        self.password = attributes[:'Password']
      end
      
    end

  end
end
