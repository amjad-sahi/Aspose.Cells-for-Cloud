require "uri"

module AsposeCellsCloud
  class CellsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Convert workbook from request content to some format.
    # 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format to convert.
    # @option opts [String] :password The workbook password.
    # @option opts [String] :out_path Path to save result
    # @return [File]
    def put_convert_work_book(file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_convert_work_book ..."
      end
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling put_convert_work_book" if file.nil?
      
      # resource path
      path = "/cells/convert".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if opts[:'format']
      query_params[:'password'] = opts[:'password'] if opts[:'password']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_convert_work_book. Result: #{result.inspect}"
      end
      return result
    end

    # Convert Excel Workbook to Different File Formats.
    # 
    # @param name The document name.
    # @param format Convert the document to this format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :is_auto_fit Set document rows to be autofit.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :out_path Save converted file with this name.
    # @return [File]
    def get_work_book_with_format(name, format, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_book_with_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_book_with_format" if name.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_work_book_with_format" if format.nil?
      
      # resource path
      path = "/cells/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'password'] = opts[:'password'] if opts[:'password']
      query_params[:'isAutoFit'] = opts[:'is_auto_fit'] if opts[:'is_auto_fit']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['multipart/form-data']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_book_with_format. Result: #{result.inspect}"
      end
      return result
    end

    # Read workbook info or export.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [BOOLEAN] :is_auto_fit Set document rows to be autofit.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [WorkbookResponse]
    def get_work_book(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_book ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_book" if name.nil?
      
      # resource path
      path = "/cells/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'password'] = opts[:'password'] if opts[:'password']
      query_params[:'isAutoFit'] = opts[:'is_auto_fit'] if opts[:'is_auto_fit']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkbookResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_book. Result: #{result.inspect}"
      end
      return result
    end

    # Create new workbook using different methods.
    # 
    # @param name The new document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :template_file The template file, if the data not provided default workbook is created.
    # @option opts [String] :data_file Smart marker data file, if the data not provided the request content is checked for the data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The new document folder.
    # @return [WorkbookResponse]
    def put_workbook_create(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_workbook_create ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_workbook_create" if name.nil?
      
      # resource path
      path = "/cells/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'templateFile'] = opts[:'template_file'] if opts[:'template_file']
      query_params[:'dataFile'] = opts[:'data_file'] if opts[:'data_file']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkbookResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_workbook_create. Result: #{result.inspect}"
      end
      return result
    end

    # Convert document and save result to storage.
    # 
    # @param name The document name.
    # @param save_options Save options.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :newfilename The new file name.
    # @option opts [BOOLEAN] :is_auto_fit_rows Autofit rows.
    # @option opts [BOOLEAN] :is_auto_fit_columns Autofit columns.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaveResponse]
    def post_document_save_as(name, save_options, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_document_save_as ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_document_save_as" if name.nil?
      
      # verify the required parameter 'save_options' is set
      fail "Missing the required parameter 'save_options' when calling post_document_save_as" if save_options.nil?
      
      # resource path
      path = "/cells/{name}/SaveAs".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'newfilename'] = opts[:'newfilename'] if opts[:'newfilename']
      query_params[:'isAutoFitRows'] = opts[:'is_auto_fit_rows'] if opts[:'is_auto_fit_rows']
      query_params[:'isAutoFitColumns'] = opts[:'is_auto_fit_columns'] if opts[:'is_auto_fit_columns']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(save_options)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaveResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_document_save_as. Result: #{result.inspect}"
      end
      return result
    end

    # Autofit workbook rows.
    # 
    # @param name Document name.
    # @param auto_fitter_options Auto Fitter Options.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_row Start row.
    # @option opts [Integer] :end_row End row.
    # @option opts [BOOLEAN] :only_auto Only auto.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def post_autofit_workbook_rows(name, auto_fitter_options, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_autofit_workbook_rows ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_autofit_workbook_rows" if name.nil?
      
      # verify the required parameter 'auto_fitter_options' is set
      fail "Missing the required parameter 'auto_fitter_options' when calling post_autofit_workbook_rows" if auto_fitter_options.nil?
      
      # resource path
      path = "/cells/{name}/autofitrows".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startRow'] = opts[:'start_row'] if opts[:'start_row']
      query_params[:'endRow'] = opts[:'end_row'] if opts[:'end_row']
      query_params[:'onlyAuto'] = opts[:'only_auto'] if opts[:'only_auto']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(auto_fitter_options)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_autofit_workbook_rows. Result: #{result.inspect}"
      end
      return result
    end

    # Calculate all formulas in workbook.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def post_workbook_calculate_formula(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_workbook_calculate_formula ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_workbook_calculate_formula" if name.nil?
      
      # resource path
      path = "/cells/{name}/calculateformula".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_workbook_calculate_formula. Result: #{result.inspect}"
      end
      return result
    end

    # Read workbook default style info.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document&#39;s folder.
    # @return [StyleResponse]
    def get_work_book_default_style(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_book_default_style ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_book_default_style" if name.nil?
      
      # resource path
      path = "/cells/{name}/defaultstyle".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StyleResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_book_default_style. Result: #{result.inspect}"
      end
      return result
    end

    # Read document properties.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CellsDocumentPropertiesResponse]
    def get_document_properties(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_document_properties ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_properties" if name.nil?
      
      # resource path
      path = "/cells/{name}/documentproperties".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsDocumentPropertiesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_document_properties. Result: #{result.inspect}"
      end
      return result
    end

    # Delete all custom document properties and clean built-in ones.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CellsDocumentPropertiesResponse]
    def delete_document_properties(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_document_properties ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_document_properties" if name.nil?
      
      # resource path
      path = "/cells/{name}/documentproperties".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsDocumentPropertiesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_document_properties. Result: #{result.inspect}"
      end
      return result
    end

    # Read document property by name.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CellsDocumentPropertyResponse]
    def get_document_property(name, property_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_document_property ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_property" if name.nil?
      
      # verify the required parameter 'property_name' is set
      fail "Missing the required parameter 'property_name' when calling get_document_property" if property_name.nil?
      
      # resource path
      path = "/cells/{name}/documentproperties/{propertyName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsDocumentPropertyResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_document_property. Result: #{result.inspect}"
      end
      return result
    end

    # Set/create document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param property {CellsDocumentProperty} with new property value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CellsDocumentPropertyResponse]
    def put_document_property(name, property_name, property, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_document_property ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_document_property" if name.nil?
      
      # verify the required parameter 'property_name' is set
      fail "Missing the required parameter 'property_name' when calling put_document_property" if property_name.nil?
      
      # verify the required parameter 'property' is set
      fail "Missing the required parameter 'property' when calling put_document_property" if property.nil?
      
      # resource path
      path = "/cells/{name}/documentproperties/{propertyName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(property)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsDocumentPropertyResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_document_property. Result: #{result.inspect}"
      end
      return result
    end

    # Delete document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CellsDocumentPropertiesResponse]
    def delete_document_property(name, property_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_document_property ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_document_property" if name.nil?
      
      # verify the required parameter 'property_name' is set
      fail "Missing the required parameter 'property_name' when calling delete_document_property" if property_name.nil?
      
      # resource path
      path = "/cells/{name}/documentproperties/{propertyName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsDocumentPropertiesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_document_property. Result: #{result.inspect}"
      end
      return result
    end

    # Encrypt document.
    # 
    # @param name The document name.
    # @param encryption Encryption parameters.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_encrypt_document(name, encryption, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_encrypt_document ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_encrypt_document" if name.nil?
      
      # verify the required parameter 'encryption' is set
      fail "Missing the required parameter 'encryption' when calling post_encrypt_document" if encryption.nil?
      
      # resource path
      path = "/cells/{name}/encryption".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(encryption)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_encrypt_document. Result: #{result.inspect}"
      end
      return result
    end

    # Decrypt document.
    # 
    # @param name The document name.
    # @param encryption Encryption settings, only password can be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_decrypt_document(name, encryption, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_decrypt_document ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_decrypt_document" if name.nil?
      
      # verify the required parameter 'encryption' is set
      fail "Missing the required parameter 'encryption' when calling delete_decrypt_document" if encryption.nil?
      
      # resource path
      path = "/cells/{name}/encryption".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(encryption)
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_decrypt_document. Result: #{result.inspect}"
      end
      return result
    end

    # Search text.
    # 
    # @param name Document name.
    # @param text Text sample.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [TextItemsResponse]
    def post_workbooks_text_search(name, text, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_workbooks_text_search ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_workbooks_text_search" if name.nil?
      
      # verify the required parameter 'text' is set
      fail "Missing the required parameter 'text' when calling post_workbooks_text_search" if text.nil?
      
      # resource path
      path = "/cells/{name}/findText".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'text'] = text
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_workbooks_text_search. Result: #{result.inspect}"
      end
      return result
    end

    # Import data to workbook.
    # 
    # @param name The workbook name.
    # @param import_option The import option.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def post_import_data(name, import_option, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_import_data ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_import_data" if name.nil?
      
      # verify the required parameter 'import_option' is set
      fail "Missing the required parameter 'import_option' when calling post_import_data" if import_option.nil?
      
      # resource path
      path = "/cells/{name}/importdata".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(import_option)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_import_data. Result: #{result.inspect}"
      end
      return result
    end

    # Merge workbooks.
    # 
    # @param name Workbook name.
    # @param merge_with The workbook to merge with.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Source workbook folder.
    # @return [WorkbookResponse]
    def post_workbooks_merge(name, merge_with, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_workbooks_merge ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_workbooks_merge" if name.nil?
      
      # verify the required parameter 'merge_with' is set
      fail "Missing the required parameter 'merge_with' when calling post_workbooks_merge" if merge_with.nil?
      
      # resource path
      path = "/cells/{name}/merge".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'mergeWith'] = merge_with
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkbookResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_workbooks_merge. Result: #{result.inspect}"
      end
      return result
    end

    # Read workbook&#39;s names.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The workbook folder.
    # @return [NamesResponse]
    def get_work_book_names(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_book_names ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_book_names" if name.nil?
      
      # resource path
      path = "/cells/{name}/names".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NamesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_book_names. Result: #{result.inspect}"
      end
      return result
    end

    # Read workbook&#39;s name.
    # 
    # @param name The workbook name.
    # @param name_name The name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The workbook folder.
    # @return [NameResponse]
    def get_work_book_name(name, name_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_book_name ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_book_name" if name.nil?
      
      # verify the required parameter 'name_name' is set
      fail "Missing the required parameter 'name_name' when calling get_work_book_name" if name_name.nil?
      
      # resource path
      path = "/cells/{name}/names/{nameName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'nameName' + '}', name_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NameResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_book_name. Result: #{result.inspect}"
      end
      return result
    end

    # Protect document.
    # 
    # @param name The document name.
    # @param protection The protection settings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_protect_document(name, protection, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_protect_document ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_protect_document" if name.nil?
      
      # verify the required parameter 'protection' is set
      fail "Missing the required parameter 'protection' when calling post_protect_document" if protection.nil?
      
      # resource path
      path = "/cells/{name}/protection".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(protection)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_protect_document. Result: #{result.inspect}"
      end
      return result
    end

    # Unprotect document.
    # 
    # @param name The document name.
    # @param protection Protection settings, only password can be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_un_protect_document(name, protection, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_un_protect_document ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_un_protect_document" if name.nil?
      
      # verify the required parameter 'protection' is set
      fail "Missing the required parameter 'protection' when calling delete_un_protect_document" if protection.nil?
      
      # resource path
      path = "/cells/{name}/protection".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(protection)
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_un_protect_document. Result: #{result.inspect}"
      end
      return result
    end

    # Replace text.
    # 
    # @param name Document name.
    # @param old_value The old value.
    # @param new_value The new value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [WorkbookReplaceResponse]
    def post_workbooks_text_replace(name, old_value, new_value, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_workbooks_text_replace ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_workbooks_text_replace" if name.nil?
      
      # verify the required parameter 'old_value' is set
      fail "Missing the required parameter 'old_value' when calling post_workbooks_text_replace" if old_value.nil?
      
      # verify the required parameter 'new_value' is set
      fail "Missing the required parameter 'new_value' when calling post_workbooks_text_replace" if new_value.nil?
      
      # resource path
      path = "/cells/{name}/replaceText".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'oldValue'] = old_value
      query_params[:'newValue'] = new_value
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkbookReplaceResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_workbooks_text_replace. Result: #{result.inspect}"
      end
      return result
    end

    # 
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [WorkbookSettingsResponse]
    def get_workbook_settings(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_workbook_settings ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_workbook_settings" if name.nil?
      
      # resource path
      path = "/cells/{name}/settings".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkbookSettingsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_workbook_settings. Result: #{result.inspect}"
      end
      return result
    end

    # 
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @option opts [WorkbookSettings] :settings 
    # @return [BaseResponse]
    def post_workbook_settings(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_workbook_settings ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_workbook_settings" if name.nil?
      
      # resource path
      path = "/cells/{name}/settings".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'settings'])
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_workbook_settings. Result: #{result.inspect}"
      end
      return result
    end

    # Smart marker processing result.
    #
    # @param name The workbook name.
    # @param file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :xml_file The xml file full path, if empty the data is read from request body.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The workbook folder full path.
    # @option opts [String] :out_path Path to save result
    # @return [File]
    def post_workbook_get_smart_marker_result(name, file, opts = {})
        if Configuration.debugging
            Configuration.logger.debug "Calling API: CellsApi#post_workbook_get_smart_marker_result ..."
        end
        
        # verify the required parameter 'name' is set
        fail "Missing the required parameter 'name' when calling post_workbook_get_smart_marker_result" if name.nil?
        
        # verify the required parameter 'file' is set
        fail "Missing the required parameter 'file' when calling post_workbook_get_smart_marker_result" if file.nil?
        
        # resource path
        path = "/cells/{name}/smartmarker".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)
        
        # query parameters
        query_params = {}
        query_params[:'xmlFile'] = opts[:'xml_file'] if opts[:'xml_file']
        query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
        query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
        query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
        
        # header parameters
        header_params = {}
        
        # HTTP header 'Accept' (if needed)
        _header_accept = ['multipart/form-data']
        _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
        
        # HTTP header 'Content-Type'
        _header_content_type = ['multipart/form-data']
        header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
        
        # form parameters
        form_params = {}
        form_params["file"] = file
        
        # http body (model)
        post_body = nil
        
        
        auth_names = []
        result = @api_client.call_api(:POST, path,
                                      :header_params => header_params,
                                      :query_params => query_params,
                                      :form_params => form_params,
                                      :body => post_body,
                                      :auth_names => auth_names,
                                      :return_type => 'File')
                                      if Configuration.debugging
                                          Configuration.logger.debug "API called: CellsApi#post_workbook_get_smart_marker_result. Result: #{result.inspect}"
                                      end
                                      return result
    end

    # Split workbook.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format Split format.
    # @option opts [Integer] :from Start worksheet index.
    # @option opts [Integer] :to End worksheet index.
    # @option opts [Integer] :horizontal_resolution Image horizontal resolution.
    # @option opts [Integer] :vertical_resolution Image vertical resolution.
    # @option opts [String] :storage The workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [SplitResultResponse]
    def post_workbook_split(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_workbook_split ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_workbook_split" if name.nil?
      
      # resource path
      path = "/cells/{name}/split".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if opts[:'format']
      query_params[:'from'] = opts[:'from'] if opts[:'from']
      query_params[:'to'] = opts[:'to'] if opts[:'to']
      query_params[:'horizontalResolution'] = opts[:'horizontal_resolution'] if opts[:'horizontal_resolution']
      query_params[:'verticalResolution'] = opts[:'vertical_resolution'] if opts[:'vertical_resolution']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SplitResultResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_workbook_split. Result: #{result.inspect}"
      end
      return result
    end

    # Read workbook&#39;s text items.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The workbook folder.
    # @return [TextItemsResponse]
    def get_work_book_text_items(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_book_text_items ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_book_text_items" if name.nil?
      
      # resource path
      path = "/cells/{name}/textItems".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_book_text_items. Result: #{result.inspect}"
      end
      return result
    end

    # Read worksheets info.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document folder.
    # @return [WorksheetsResponse]
    def get_work_sheets(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheets ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheets" if name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheets. Result: #{result.inspect}"
      end
      return result
    end

    # Read worksheet info or export.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :vertical_resolution Image vertical resolution.
    # @option opts [Integer] :horizontal_resolution Image horizontal resolution.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [WorksheetResponse]
    def get_work_sheet(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'verticalResolution'] = opts[:'vertical_resolution'] if opts[:'vertical_resolution']
      query_params[:'horizontalResolution'] = opts[:'horizontal_resolution'] if opts[:'horizontal_resolution']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet. Result: #{result.inspect}"
      end
      return result
    end

    # Read worksheet in specified format
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param format Worksheet format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :vertical_resolution Image vertical resolution.
    # @option opts [Integer] :horizontal_resolution Image horizontal resolution.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_work_sheet_with_format(name, sheet_name, format, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_with_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_with_format" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_with_format" if sheet_name.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_work_sheet_with_format" if format.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'verticalResolution'] = opts[:'vertical_resolution'] if opts[:'vertical_resolution']
      query_params[:'horizontalResolution'] = opts[:'horizontal_resolution'] if opts[:'horizontal_resolution']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_with_format. Result: #{result.inspect}"
      end
      return result
    end

    # Add new worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The new sheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document folder.
    # @return [WorksheetsResponse]
    def put_add_new_worksheet(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_add_new_worksheet ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_add_new_worksheet" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_add_new_worksheet" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_add_new_worksheet. Result: #{result.inspect}"
      end
      return result
    end

    # Update worksheet property
    # 
    # @param name 
    # @param sheet_name 
    # @param sheet 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage 
    # @return [WorksheetResponse]
    def post_update_worksheet_property(name, sheet_name, sheet, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_update_worksheet_property ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_update_worksheet_property" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_update_worksheet_property" if sheet_name.nil?
      
      # verify the required parameter 'sheet' is set
      fail "Missing the required parameter 'sheet' when calling post_update_worksheet_property" if sheet.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sheet)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_update_worksheet_property. Result: #{result.inspect}"
      end
      return result
    end

    # Delete worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [WorksheetsResponse]
    def delete_worksheet(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet. Result: #{result.inspect}"
      end
      return result
    end

    # Autofit worksheet rows.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param auto_fitter_options Auto Fitter Options.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_row Start row.
    # @option opts [Integer] :end_row End row.
    # @option opts [BOOLEAN] :only_auto Only auto.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def post_autofit_worksheet_rows(name, sheet_name, auto_fitter_options, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_autofit_worksheet_rows ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_autofit_worksheet_rows" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_autofit_worksheet_rows" if sheet_name.nil?
      
      # verify the required parameter 'auto_fitter_options' is set
      fail "Missing the required parameter 'auto_fitter_options' when calling post_autofit_worksheet_rows" if auto_fitter_options.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/autofitrows".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startRow'] = opts[:'start_row'] if opts[:'start_row']
      query_params[:'endRow'] = opts[:'end_row'] if opts[:'end_row']
      query_params[:'onlyAuto'] = opts[:'only_auto'] if opts[:'only_auto']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(auto_fitter_options)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_autofit_worksheet_rows. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet autoshapes info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [AutoShapesResponse]
    def get_worksheet_autoshapes(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_autoshapes ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_autoshapes" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_autoshapes" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/autoshapes".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AutoShapesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_autoshapes. Result: #{result.inspect}"
      end
      return result
    end

    # Get autoshape info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param autoshape_number The autoshape number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The document folder.
    # @return [AutoShapeResponse]
    def get_worksheet_autoshape(name, sheet_name, autoshape_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_autoshape ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_autoshape" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_autoshape" if sheet_name.nil?
      
      # verify the required parameter 'autoshape_number' is set
      fail "Missing the required parameter 'autoshape_number' when calling get_worksheet_autoshape" if autoshape_number.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'autoshapeNumber' + '}', autoshape_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AutoShapeResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_autoshape. Result: #{result.inspect}"
      end
      return result
    end

    # Convert autoshape to Different File Formats.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param autoshape_number The autoshape number.
    # @param format Convert autoshape to this format
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_worksheet_autoshape_with_format(name, sheet_name, autoshape_number, format, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_autoshape_with_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_autoshape_with_format" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_autoshape_with_format" if sheet_name.nil?
      
      # verify the required parameter 'autoshape_number' is set
      fail "Missing the required parameter 'autoshape_number' when calling get_worksheet_autoshape_with_format" if autoshape_number.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_worksheet_autoshape_with_format" if format.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'autoshapeNumber' + '}', autoshape_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_autoshape_with_format. Result: #{result.inspect}"
      end
      return result
    end

    # Set worksheet background image.
    #
    # @param name
    # @param sheet_name
    # @param file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder
    # @option opts [String] :storage
    # @return [BaseResponse]
    def put_work_sheet_background(name, sheet_name, file, opts = {})
        if Configuration.debugging
            Configuration.logger.debug "Calling API: CellsApi#put_work_sheet_background ..."
        end
        
        # verify the required parameter 'name' is set
        fail "Missing the required parameter 'name' when calling put_work_sheet_background" if name.nil?
        
        # verify the required parameter 'sheet_name' is set
        fail "Missing the required parameter 'sheet_name' when calling put_work_sheet_background" if sheet_name.nil?
        
        # verify the required parameter 'file' is set
        fail "Missing the required parameter 'file' when calling put_work_sheet_background" if file.nil?
        
        # resource path
        path = "/cells/{name}/worksheets/{sheetName}/background".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)
        
        # query parameters
        query_params = {}
        query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
        query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
        
        # header parameters
        header_params = {}
        
        # HTTP header 'Accept' (if needed)
        _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
        _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
        
        # HTTP header 'Content-Type'
        _header_content_type = ['multipart/form-data']
        header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
        
        # form parameters
        form_params = {}
        form_params["file"] = file
        
        # http body (model)
        post_body = nil
        
        
        auth_names = []
        result = @api_client.call_api(:PUT, path,
                                      :header_params => header_params,
                                      :query_params => query_params,
                                      :form_params => form_params,
                                      :body => post_body,
                                      :auth_names => auth_names,
                                      :return_type => 'BaseResponse')
                                      if Configuration.debugging
                                          Configuration.logger.debug "API called: CellsApi#put_work_sheet_background. Result: #{result.inspect}"
                                      end
                                      return result
    end

    # Set worksheet background image.
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage 
    # @return [BaseResponse]
    def delete_work_sheet_background(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_work_sheet_background ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_work_sheet_background" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_work_sheet_background" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/background".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_work_sheet_background. Result: #{result.inspect}"
      end
      return result
    end

    # Get cells info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offest Begginig offset.
    # @option opts [Integer] :count Maximum amount of cells in the response.
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder name.
    # @return [CellsResponse]
    def get_worksheet_cells(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_cells ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_cells" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_cells" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'offest'] = opts[:'offest'] if opts[:'offest']
      query_params[:'count'] = opts[:'count'] if opts[:'count']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_cells. Result: #{result.inspect}"
      end
      return result
    end

    # Set cell range value
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param cellarea Cell area (like \&quot;A1:C2\&quot;)
    # @param value Range value
    # @param type Value data type (like \&quot;int\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Storage name
    # @option opts [String] :folder Folder name
    # @return [BaseResponse]
    def post_set_cell_range_value(name, sheet_name, cellarea, value, type, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_set_cell_range_value ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_set_cell_range_value" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_set_cell_range_value" if sheet_name.nil?
      
      # verify the required parameter 'cellarea' is set
      fail "Missing the required parameter 'cellarea' when calling post_set_cell_range_value" if cellarea.nil?
      
      # verify the required parameter 'value' is set
      fail "Missing the required parameter 'value' when calling post_set_cell_range_value" if value.nil?
      
      # verify the required parameter 'type' is set
      fail "Missing the required parameter 'type' when calling post_set_cell_range_value" if type.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'cellarea'] = cellarea
      query_params[:'value'] = value
      query_params[:'type'] = type
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_set_cell_range_value. Result: #{result.inspect}"
      end
      return result
    end

    # Clear cells contents.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range The range.
    # @option opts [Integer] :start_row The start row.
    # @option opts [Integer] :start_column The start column.
    # @option opts [Integer] :end_row The end row.
    # @option opts [Integer] :end_column The end column.
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def post_clear_contents(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_clear_contents ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_clear_contents" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_clear_contents" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/clearcontents".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = opts[:'range'] if opts[:'range']
      query_params[:'startRow'] = opts[:'start_row'] if opts[:'start_row']
      query_params[:'startColumn'] = opts[:'start_column'] if opts[:'start_column']
      query_params[:'endRow'] = opts[:'end_row'] if opts[:'end_row']
      query_params[:'endColumn'] = opts[:'end_column'] if opts[:'end_column']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_clear_contents. Result: #{result.inspect}"
      end
      return result
    end

    # Clear cells contents.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range The range.
    # @option opts [Integer] :start_row The start row.
    # @option opts [Integer] :start_column The start column.
    # @option opts [Integer] :end_row The end row.
    # @option opts [Integer] :end_column The end column.
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def post_clear_formats(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_clear_formats ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_clear_formats" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_clear_formats" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/clearformats".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = opts[:'range'] if opts[:'range']
      query_params[:'startRow'] = opts[:'start_row'] if opts[:'start_row']
      query_params[:'startColumn'] = opts[:'start_column'] if opts[:'start_column']
      query_params[:'endRow'] = opts[:'end_row'] if opts[:'end_row']
      query_params[:'endColumn'] = opts[:'end_column'] if opts[:'end_column']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_clear_formats. Result: #{result.inspect}"
      end
      return result
    end

    # Read worksheet columns info.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workdook folder.
    # @return [ColumnsResponse]
    def get_worksheet_columns(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_columns ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_columns" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_columns" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ColumnsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_columns. Result: #{result.inspect}"
      end
      return result
    end

    # Copy worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param source_column_index Source column index
    # @param destination_column_index Destination column index
    # @param column_number The copied column number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :worksheet The Worksheet
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_copy_worksheet_columns(name, sheet_name, source_column_index, destination_column_index, column_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_copy_worksheet_columns ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_copy_worksheet_columns" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_copy_worksheet_columns" if sheet_name.nil?
      
      # verify the required parameter 'source_column_index' is set
      fail "Missing the required parameter 'source_column_index' when calling post_copy_worksheet_columns" if source_column_index.nil?
      
      # verify the required parameter 'destination_column_index' is set
      fail "Missing the required parameter 'destination_column_index' when calling post_copy_worksheet_columns" if destination_column_index.nil?
      
      # verify the required parameter 'column_number' is set
      fail "Missing the required parameter 'column_number' when calling post_copy_worksheet_columns" if column_number.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns/copy".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'sourceColumnIndex'] = source_column_index
      query_params[:'destinationColumnIndex'] = destination_column_index
      query_params[:'columnNumber'] = column_number
      query_params[:'worksheet'] = opts[:'worksheet'] if opts[:'worksheet']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_copy_worksheet_columns. Result: #{result.inspect}"
      end
      return result
    end

    # Group worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first column index to be operated.
    # @param last_index The last column index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :hide columns visible state
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_group_worksheet_columns(name, sheet_name, first_index, last_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_group_worksheet_columns ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_group_worksheet_columns" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_group_worksheet_columns" if sheet_name.nil?
      
      # verify the required parameter 'first_index' is set
      fail "Missing the required parameter 'first_index' when calling post_group_worksheet_columns" if first_index.nil?
      
      # verify the required parameter 'last_index' is set
      fail "Missing the required parameter 'last_index' when calling post_group_worksheet_columns" if last_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns/group".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstIndex'] = first_index
      query_params[:'lastIndex'] = last_index
      query_params[:'hide'] = opts[:'hide'] if opts[:'hide']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_group_worksheet_columns. Result: #{result.inspect}"
      end
      return result
    end

    # Hide worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param start_column The begin column index to be operated.
    # @param total_columns Number of columns to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_hide_worksheet_columns(name, sheet_name, start_column, total_columns, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_hide_worksheet_columns ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_hide_worksheet_columns" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_hide_worksheet_columns" if sheet_name.nil?
      
      # verify the required parameter 'start_column' is set
      fail "Missing the required parameter 'start_column' when calling post_hide_worksheet_columns" if start_column.nil?
      
      # verify the required parameter 'total_columns' is set
      fail "Missing the required parameter 'total_columns' when calling post_hide_worksheet_columns" if total_columns.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns/hide".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startColumn'] = start_column
      query_params[:'totalColumns'] = total_columns
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_hide_worksheet_columns. Result: #{result.inspect}"
      end
      return result
    end

    # Ungroup worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first column index to be operated.
    # @param last_index The last column index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_ungroup_worksheet_columns(name, sheet_name, first_index, last_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_ungroup_worksheet_columns ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_ungroup_worksheet_columns" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_ungroup_worksheet_columns" if sheet_name.nil?
      
      # verify the required parameter 'first_index' is set
      fail "Missing the required parameter 'first_index' when calling post_ungroup_worksheet_columns" if first_index.nil?
      
      # verify the required parameter 'last_index' is set
      fail "Missing the required parameter 'last_index' when calling post_ungroup_worksheet_columns" if last_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns/ungroup".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstIndex'] = first_index
      query_params[:'lastIndex'] = last_index
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_ungroup_worksheet_columns. Result: #{result.inspect}"
      end
      return result
    end

    # Unhide worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startcolumn The begin column index to be operated.
    # @param total_columns Number of columns to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :width The new column width.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_unhide_worksheet_columns(name, sheet_name, startcolumn, total_columns, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_unhide_worksheet_columns ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_unhide_worksheet_columns" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_unhide_worksheet_columns" if sheet_name.nil?
      
      # verify the required parameter 'startcolumn' is set
      fail "Missing the required parameter 'startcolumn' when calling post_unhide_worksheet_columns" if startcolumn.nil?
      
      # verify the required parameter 'total_columns' is set
      fail "Missing the required parameter 'total_columns' when calling post_unhide_worksheet_columns" if total_columns.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns/unhide".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startcolumn'] = startcolumn
      query_params[:'totalColumns'] = total_columns
      query_params[:'width'] = opts[:'width'] if opts[:'width']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_unhide_worksheet_columns. Result: #{result.inspect}"
      end
      return result
    end

    # Read worksheet column data by column&#39;s index.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [ColumnResponse]
    def get_worksheet_column(name, sheet_name, column_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_column ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_column" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_column" if sheet_name.nil?
      
      # verify the required parameter 'column_index' is set
      fail "Missing the required parameter 'column_index' when calling get_worksheet_column" if column_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'columnIndex' + '}', column_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ColumnResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_column. Result: #{result.inspect}"
      end
      return result
    end

    # Insert worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param columns The columns.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :update_reference The update reference.
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [ColumnsResponse]
    def put_insert_worksheet_columns(name, sheet_name, column_index, columns, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_insert_worksheet_columns ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_insert_worksheet_columns" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_insert_worksheet_columns" if sheet_name.nil?
      
      # verify the required parameter 'column_index' is set
      fail "Missing the required parameter 'column_index' when calling put_insert_worksheet_columns" if column_index.nil?
      
      # verify the required parameter 'columns' is set
      fail "Missing the required parameter 'columns' when calling put_insert_worksheet_columns" if columns.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'columnIndex' + '}', column_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'columns'] = columns
      query_params[:'updateReference'] = opts[:'update_reference'] if opts[:'update_reference']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ColumnsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_insert_worksheet_columns. Result: #{result.inspect}"
      end
      return result
    end

    # Set worksheet column width.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param width The width.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [ColumnResponse]
    def post_set_worksheet_column_width(name, sheet_name, column_index, width, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_set_worksheet_column_width ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_set_worksheet_column_width" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_set_worksheet_column_width" if sheet_name.nil?
      
      # verify the required parameter 'column_index' is set
      fail "Missing the required parameter 'column_index' when calling post_set_worksheet_column_width" if column_index.nil?
      
      # verify the required parameter 'width' is set
      fail "Missing the required parameter 'width' when calling post_set_worksheet_column_width" if width.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'columnIndex' + '}', column_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = width
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ColumnResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_set_worksheet_column_width. Result: #{result.inspect}"
      end
      return result
    end

    # Delete worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param columns The columns.
    # @param update_reference The update reference.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [ColumnsResponse]
    def delete_worksheet_columns(name, sheet_name, column_index, columns, update_reference, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_columns ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_columns" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_columns" if sheet_name.nil?
      
      # verify the required parameter 'column_index' is set
      fail "Missing the required parameter 'column_index' when calling delete_worksheet_columns" if column_index.nil?
      
      # verify the required parameter 'columns' is set
      fail "Missing the required parameter 'columns' when calling delete_worksheet_columns" if columns.nil?
      
      # verify the required parameter 'update_reference' is set
      fail "Missing the required parameter 'update_reference' when calling delete_worksheet_columns" if update_reference.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'columnIndex' + '}', column_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'columns'] = columns
      query_params[:'updateReference'] = update_reference
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ColumnsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_columns. Result: #{result.inspect}"
      end
      return result
    end

    # Set column style
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param style Style dto
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def post_column_style(name, sheet_name, column_index, style, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_column_style ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_column_style" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_column_style" if sheet_name.nil?
      
      # verify the required parameter 'column_index' is set
      fail "Missing the required parameter 'column_index' when calling post_column_style" if column_index.nil?
      
      # verify the required parameter 'style' is set
      fail "Missing the required parameter 'style' when calling post_column_style" if style.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/style".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'columnIndex' + '}', column_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(style)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_column_style. Result: #{result.inspect}"
      end
      return result
    end

    # Merge cells.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param start_row The start row.
    # @param start_column The start column.
    # @param total_rows The total rows
    # @param total_columns The total columns.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def post_worksheet_merge(name, sheet_name, start_row, start_column, total_rows, total_columns, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_worksheet_merge ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_worksheet_merge" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_worksheet_merge" if sheet_name.nil?
      
      # verify the required parameter 'start_row' is set
      fail "Missing the required parameter 'start_row' when calling post_worksheet_merge" if start_row.nil?
      
      # verify the required parameter 'start_column' is set
      fail "Missing the required parameter 'start_column' when calling post_worksheet_merge" if start_column.nil?
      
      # verify the required parameter 'total_rows' is set
      fail "Missing the required parameter 'total_rows' when calling post_worksheet_merge" if total_rows.nil?
      
      # verify the required parameter 'total_columns' is set
      fail "Missing the required parameter 'total_columns' when calling post_worksheet_merge" if total_columns.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/merge".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startRow'] = start_row
      query_params[:'startColumn'] = start_column
      query_params[:'totalRows'] = total_rows
      query_params[:'totalColumns'] = total_columns
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_worksheet_merge. Result: #{result.inspect}"
      end
      return result
    end

    # Read worksheet rows info.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workdook folder.
    # @return [RowsResponse]
    def get_worksheet_rows(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_rows ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_rows" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_rows" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RowsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_rows. Result: #{result.inspect}"
      end
      return result
    end

    # Insert several new worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startrow The begin row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :total_rows Number of rows to be operated.
    # @option opts [BOOLEAN] :update_reference Indicates if update references in other worksheets.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def put_insert_worksheet_rows(name, sheet_name, startrow, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_insert_worksheet_rows ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_insert_worksheet_rows" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_insert_worksheet_rows" if sheet_name.nil?
      
      # verify the required parameter 'startrow' is set
      fail "Missing the required parameter 'startrow' when calling put_insert_worksheet_rows" if startrow.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startrow'] = startrow
      query_params[:'totalRows'] = opts[:'total_rows'] if opts[:'total_rows']
      query_params[:'updateReference'] = opts[:'update_reference'] if opts[:'update_reference']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_insert_worksheet_rows. Result: #{result.inspect}"
      end
      return result
    end

    # Delete several worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet bame.
    # @param startrow The begin row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :total_rows Number of rows to be operated.
    # @option opts [BOOLEAN] :update_reference Indicates if update references in other worksheets.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_worksheet_rows(name, sheet_name, startrow, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_rows ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_rows" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_rows" if sheet_name.nil?
      
      # verify the required parameter 'startrow' is set
      fail "Missing the required parameter 'startrow' when calling delete_worksheet_rows" if startrow.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startrow'] = startrow
      query_params[:'totalRows'] = opts[:'total_rows'] if opts[:'total_rows']
      query_params[:'updateReference'] = opts[:'update_reference'] if opts[:'update_reference']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_rows. Result: #{result.inspect}"
      end
      return result
    end

    # Copy worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param source_row_index Source row index
    # @param destination_row_index Destination row index
    # @param row_number The copied row number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :worksheet worksheet
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_copy_worksheet_rows(name, sheet_name, source_row_index, destination_row_index, row_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_copy_worksheet_rows ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_copy_worksheet_rows" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_copy_worksheet_rows" if sheet_name.nil?
      
      # verify the required parameter 'source_row_index' is set
      fail "Missing the required parameter 'source_row_index' when calling post_copy_worksheet_rows" if source_row_index.nil?
      
      # verify the required parameter 'destination_row_index' is set
      fail "Missing the required parameter 'destination_row_index' when calling post_copy_worksheet_rows" if destination_row_index.nil?
      
      # verify the required parameter 'row_number' is set
      fail "Missing the required parameter 'row_number' when calling post_copy_worksheet_rows" if row_number.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows/copy".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'sourceRowIndex'] = source_row_index
      query_params[:'destinationRowIndex'] = destination_row_index
      query_params[:'rowNumber'] = row_number
      query_params[:'worksheet'] = opts[:'worksheet'] if opts[:'worksheet']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_copy_worksheet_rows. Result: #{result.inspect}"
      end
      return result
    end

    # Group worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first row index to be operated.
    # @param last_index The last row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :hide rows visible state
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_group_worksheet_rows(name, sheet_name, first_index, last_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_group_worksheet_rows ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_group_worksheet_rows" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_group_worksheet_rows" if sheet_name.nil?
      
      # verify the required parameter 'first_index' is set
      fail "Missing the required parameter 'first_index' when calling post_group_worksheet_rows" if first_index.nil?
      
      # verify the required parameter 'last_index' is set
      fail "Missing the required parameter 'last_index' when calling post_group_worksheet_rows" if last_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows/group".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstIndex'] = first_index
      query_params[:'lastIndex'] = last_index
      query_params[:'hide'] = opts[:'hide'] if opts[:'hide']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_group_worksheet_rows. Result: #{result.inspect}"
      end
      return result
    end

    # Hide worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startrow The begin row index to be operated.
    # @param total_rows Number of rows to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_hide_worksheet_rows(name, sheet_name, startrow, total_rows, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_hide_worksheet_rows ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_hide_worksheet_rows" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_hide_worksheet_rows" if sheet_name.nil?
      
      # verify the required parameter 'startrow' is set
      fail "Missing the required parameter 'startrow' when calling post_hide_worksheet_rows" if startrow.nil?
      
      # verify the required parameter 'total_rows' is set
      fail "Missing the required parameter 'total_rows' when calling post_hide_worksheet_rows" if total_rows.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows/hide".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startrow'] = startrow
      query_params[:'totalRows'] = total_rows
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_hide_worksheet_rows. Result: #{result.inspect}"
      end
      return result
    end

    # Ungroup worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first row index to be operated.
    # @param last_index The last row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :is_all Is all row to be operated
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_ungroup_worksheet_rows(name, sheet_name, first_index, last_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_ungroup_worksheet_rows ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_ungroup_worksheet_rows" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_ungroup_worksheet_rows" if sheet_name.nil?
      
      # verify the required parameter 'first_index' is set
      fail "Missing the required parameter 'first_index' when calling post_ungroup_worksheet_rows" if first_index.nil?
      
      # verify the required parameter 'last_index' is set
      fail "Missing the required parameter 'last_index' when calling post_ungroup_worksheet_rows" if last_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows/ungroup".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstIndex'] = first_index
      query_params[:'lastIndex'] = last_index
      query_params[:'isAll'] = opts[:'is_all'] if opts[:'is_all']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_ungroup_worksheet_rows. Result: #{result.inspect}"
      end
      return result
    end

    # Unhide worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startrow The begin row index to be operated.
    # @param total_rows Number of rows to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height The new row height.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_unhide_worksheet_rows(name, sheet_name, startrow, total_rows, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_unhide_worksheet_rows ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_unhide_worksheet_rows" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_unhide_worksheet_rows" if sheet_name.nil?
      
      # verify the required parameter 'startrow' is set
      fail "Missing the required parameter 'startrow' when calling post_unhide_worksheet_rows" if startrow.nil?
      
      # verify the required parameter 'total_rows' is set
      fail "Missing the required parameter 'total_rows' when calling post_unhide_worksheet_rows" if total_rows.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows/unhide".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startrow'] = startrow
      query_params[:'totalRows'] = total_rows
      query_params[:'height'] = opts[:'height'] if opts[:'height']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_unhide_worksheet_rows. Result: #{result.inspect}"
      end
      return result
    end

    # Read worksheet row data by row&#39;s index.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [RowResponse]
    def get_worksheet_row(name, sheet_name, row_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_row ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_row" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_row" if sheet_name.nil?
      
      # verify the required parameter 'row_index' is set
      fail "Missing the required parameter 'row_index' when calling get_worksheet_row" if row_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'rowIndex' + '}', row_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RowResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_row. Result: #{result.inspect}"
      end
      return result
    end

    # Insert new worksheet row.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The new row index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [RowResponse]
    def put_insert_worksheet_row(name, sheet_name, row_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_insert_worksheet_row ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_insert_worksheet_row" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_insert_worksheet_row" if sheet_name.nil?
      
      # verify the required parameter 'row_index' is set
      fail "Missing the required parameter 'row_index' when calling put_insert_worksheet_row" if row_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'rowIndex' + '}', row_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RowResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_insert_worksheet_row. Result: #{result.inspect}"
      end
      return result
    end

    # Update worksheet row.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height The new row height.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [RowResponse]
    def post_update_worksheet_row(name, sheet_name, row_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_update_worksheet_row ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_update_worksheet_row" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_update_worksheet_row" if sheet_name.nil?
      
      # verify the required parameter 'row_index' is set
      fail "Missing the required parameter 'row_index' when calling post_update_worksheet_row" if row_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'rowIndex' + '}', row_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'height'] = opts[:'height'] if opts[:'height']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RowResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_update_worksheet_row. Result: #{result.inspect}"
      end
      return result
    end

    # Delete worksheet row.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet bame.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_worksheet_row(name, sheet_name, row_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_row ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_row" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_row" if sheet_name.nil?
      
      # verify the required parameter 'row_index' is set
      fail "Missing the required parameter 'row_index' when calling delete_worksheet_row" if row_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'rowIndex' + '}', row_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_row. Result: #{result.inspect}"
      end
      return result
    end

    # Set row style.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The row index.
    # @param style Style dto
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_row_style(name, sheet_name, row_index, style, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_row_style ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_row_style" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_row_style" if sheet_name.nil?
      
      # verify the required parameter 'row_index' is set
      fail "Missing the required parameter 'row_index' when calling post_row_style" if row_index.nil?
      
      # verify the required parameter 'style' is set
      fail "Missing the required parameter 'style' when calling post_row_style" if style.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/style".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'rowIndex' + '}', row_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(style)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_row_style. Result: #{result.inspect}"
      end
      return result
    end

    # Update cell&#39;s range style.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param range The range.
    # @param style {Style} with update style settings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def post_update_worksheet_range_style(name, sheet_name, range, style, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_update_worksheet_range_style ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_update_worksheet_range_style" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_update_worksheet_range_style" if sheet_name.nil?
      
      # verify the required parameter 'range' is set
      fail "Missing the required parameter 'range' when calling post_update_worksheet_range_style" if range.nil?
      
      # verify the required parameter 'style' is set
      fail "Missing the required parameter 'style' when calling post_update_worksheet_range_style" if style.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/style".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(style)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_update_worksheet_range_style. Result: #{result.inspect}"
      end
      return result
    end

    # Unmerge cells.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param start_row The start row.
    # @param start_column The start column.
    # @param total_rows The total rows
    # @param total_columns The total columns.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def post_worksheet_unmerge(name, sheet_name, start_row, start_column, total_rows, total_columns, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_worksheet_unmerge ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_worksheet_unmerge" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_worksheet_unmerge" if sheet_name.nil?
      
      # verify the required parameter 'start_row' is set
      fail "Missing the required parameter 'start_row' when calling post_worksheet_unmerge" if start_row.nil?
      
      # verify the required parameter 'start_column' is set
      fail "Missing the required parameter 'start_column' when calling post_worksheet_unmerge" if start_column.nil?
      
      # verify the required parameter 'total_rows' is set
      fail "Missing the required parameter 'total_rows' when calling post_worksheet_unmerge" if total_rows.nil?
      
      # verify the required parameter 'total_columns' is set
      fail "Missing the required parameter 'total_columns' when calling post_worksheet_unmerge" if total_columns.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/unmerge".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startRow'] = start_row
      query_params[:'startColumn'] = start_column
      query_params[:'totalRows'] = total_rows
      query_params[:'totalColumns'] = total_columns
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_worksheet_unmerge. Result: #{result.inspect}"
      end
      return result
    end

    # Set cell value.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :value The cell value.
    # @option opts [String] :type The value type.
    # @option opts [String] :formula Formula for cell
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The document folder.
    # @return [CellResponse]
    def post_worksheet_cell_set_value(name, sheet_name, cell_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_worksheet_cell_set_value ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_worksheet_cell_set_value" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_worksheet_cell_set_value" if sheet_name.nil?
      
      # verify the required parameter 'cell_name' is set
      fail "Missing the required parameter 'cell_name' when calling post_worksheet_cell_set_value" if cell_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'value'] = opts[:'value'] if opts[:'value']
      query_params[:'type'] = opts[:'type'] if opts[:'type']
      query_params[:'formula'] = opts[:'formula'] if opts[:'formula']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_worksheet_cell_set_value. Result: #{result.inspect}"
      end
      return result
    end

    # Set htmlstring value into cell
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param cell_name The cell name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [CellResponse]
    def post_set_cell_html_string(name, sheet_name, cell_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_set_cell_html_string ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_set_cell_html_string" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_set_cell_html_string" if sheet_name.nil?
      
      # verify the required parameter 'cell_name' is set
      fail "Missing the required parameter 'cell_name' when calling post_set_cell_html_string" if cell_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_set_cell_html_string. Result: #{result.inspect}"
      end
      return result
    end

    # Read cell&#39;s style info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param cell_name Cell&#39;s name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [StyleResponse]
    def get_worksheet_cell_style(name, sheet_name, cell_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_cell_style ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_cell_style" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_cell_style" if sheet_name.nil?
      
      # verify the required parameter 'cell_name' is set
      fail "Missing the required parameter 'cell_name' when calling get_worksheet_cell_style" if cell_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StyleResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_cell_style. Result: #{result.inspect}"
      end
      return result
    end

    # Update cell&#39;s style.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param cell_name The cell name.
    # @param style {Style} with update style settings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [StyleResponse]
    def post_update_worksheet_cell_style(name, sheet_name, cell_name, style, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_update_worksheet_cell_style ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_update_worksheet_cell_style" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_update_worksheet_cell_style" if sheet_name.nil?
      
      # verify the required parameter 'cell_name' is set
      fail "Missing the required parameter 'cell_name' when calling post_update_worksheet_cell_style" if cell_name.nil?
      
      # verify the required parameter 'style' is set
      fail "Missing the required parameter 'style' when calling post_update_worksheet_cell_style" if style.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(style)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StyleResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_update_worksheet_cell_style. Result: #{result.inspect}"
      end
      return result
    end

    # Read cell data by cell&#39;s name.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param cell_or_method_name The cell&#39;s or method name. (Method name like firstcell, endcell etc.)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [CellResponse]
    def get_worksheet_cell(name, sheet_name, cell_or_method_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_cell ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_cell" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_cell" if sheet_name.nil?
      
      # verify the required parameter 'cell_or_method_name' is set
      fail "Missing the required parameter 'cell_or_method_name' when calling get_worksheet_cell" if cell_or_method_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/{cellOrMethodName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellOrMethodName' + '}', cell_or_method_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_cell. Result: #{result.inspect}"
      end
      return result
    end

    # Copy cell into cell
    # 
    # @param name Workbook name.
    # @param dest_cell_name Destination cell name
    # @param sheet_name Destination worksheet name.
    # @param worksheet Source worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cellname Source cell name
    # @option opts [Integer] :row Source row
    # @option opts [Integer] :column Source column
    # @option opts [String] :storage Storage name
    # @option opts [String] :folder Folder name
    # @return [BaseResponse]
    def post_copy_cell_into_cell(name, dest_cell_name, sheet_name, worksheet, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_copy_cell_into_cell ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_copy_cell_into_cell" if name.nil?
      
      # verify the required parameter 'dest_cell_name' is set
      fail "Missing the required parameter 'dest_cell_name' when calling post_copy_cell_into_cell" if dest_cell_name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_copy_cell_into_cell" if sheet_name.nil?
      
      # verify the required parameter 'worksheet' is set
      fail "Missing the required parameter 'worksheet' when calling post_copy_cell_into_cell" if worksheet.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/cells/{destCellName}/copy".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'destCellName' + '}', dest_cell_name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'worksheet'] = worksheet
      query_params[:'cellname'] = opts[:'cellname'] if opts[:'cellname']
      query_params[:'row'] = opts[:'row'] if opts[:'row']
      query_params[:'column'] = opts[:'column'] if opts[:'column']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_copy_cell_into_cell. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet charts info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [ChartsResponse]
    def get_worksheet_charts(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_charts ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_charts" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_charts" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChartsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_charts. Result: #{result.inspect}"
      end
      return result
    end

    # Add new chart to worksheet.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param chart_type Chart type, please refer property Type in chart resource.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :upper_left_row New chart upper left row.
    # @option opts [Integer] :upper_left_column New chart upperleft column.
    # @option opts [Integer] :lower_right_row New chart lower right row.
    # @option opts [Integer] :lower_right_column New chart lower right column.
    # @option opts [String] :area Specifies values from which to plot the data series.
    # @option opts [BOOLEAN] :is_vertical Specifies whether to plot the series from a range of cell values by row or by column.
    # @option opts [String] :category_data Gets or sets the range of category Axis values. It can be a range of cells (such as, \&quot;d1:e10\&quot;).
    # @option opts [BOOLEAN] :is_auto_get_serial_name Specifies whether auto update serial name.
    # @option opts [String] :title Specifies chart title name.
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [ChartsResponse]
    def put_worksheet_add_chart(name, sheet_name, chart_type, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_worksheet_add_chart ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_worksheet_add_chart" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_worksheet_add_chart" if sheet_name.nil?
      
      # verify the required parameter 'chart_type' is set
      fail "Missing the required parameter 'chart_type' when calling put_worksheet_add_chart" if chart_type.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'chartType'] = chart_type
      query_params[:'upperLeftRow'] = opts[:'upper_left_row'] if opts[:'upper_left_row']
      query_params[:'upperLeftColumn'] = opts[:'upper_left_column'] if opts[:'upper_left_column']
      query_params[:'lowerRightRow'] = opts[:'lower_right_row'] if opts[:'lower_right_row']
      query_params[:'lowerRightColumn'] = opts[:'lower_right_column'] if opts[:'lower_right_column']
      query_params[:'area'] = opts[:'area'] if opts[:'area']
      query_params[:'isVertical'] = opts[:'is_vertical'] if opts[:'is_vertical']
      query_params[:'categoryData'] = opts[:'category_data'] if opts[:'category_data']
      query_params[:'isAutoGetSerialName'] = opts[:'is_auto_get_serial_name'] if opts[:'is_auto_get_serial_name']
      query_params[:'title'] = opts[:'title'] if opts[:'title']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChartsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_worksheet_add_chart. Result: #{result.inspect}"
      end
      return result
    end

    # Clear the charts.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def delete_worksheet_clear_charts(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_clear_charts ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_clear_charts" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_clear_charts" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_clear_charts. Result: #{result.inspect}"
      end
      return result
    end

    # Delete worksheet chart by index.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [ChartsResponse]
    def delete_worksheet_delete_chart(name, sheet_name, chart_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_delete_chart ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_delete_chart" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_delete_chart" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling delete_worksheet_delete_chart" if chart_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChartsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_delete_chart. Result: #{result.inspect}"
      end
      return result
    end

    # Get chart area info.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Workbook folder.
    # @return [ChartAreaResponse]
    def get_chart_area(name, sheet_name, chart_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_chart_area ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_chart_area" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_chart_area" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling get_chart_area" if chart_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChartAreaResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_chart_area. Result: #{result.inspect}"
      end
      return result
    end

    # Get chart area border info.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Workbook folder.
    # @return [LineResponse]
    def get_chart_area_border(name, sheet_name, chart_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_chart_area_border ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_chart_area_border" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_chart_area_border" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling get_chart_area_border" if chart_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/border".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LineResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_chart_area_border. Result: #{result.inspect}"
      end
      return result
    end

    # Get chart area fill format info.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Workbook folder.
    # @return [FillFormatResponse]
    def get_chart_area_fill_format(name, sheet_name, chart_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_chart_area_fill_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_chart_area_fill_format" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_chart_area_fill_format" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling get_chart_area_fill_format" if chart_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/fillFormat".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FillFormatResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_chart_area_fill_format. Result: #{result.inspect}"
      end
      return result
    end

    # Get chart legend
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [LegendResponse]
    def get_worksheet_chart_legend(name, sheet_name, chart_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_chart_legend ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_chart_legend" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_chart_legend" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling get_worksheet_chart_legend" if chart_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LegendResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_chart_legend. Result: #{result.inspect}"
      end
      return result
    end

    # Show legend in chart
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def put_worksheet_chart_legend(name, sheet_name, chart_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_worksheet_chart_legend ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_worksheet_chart_legend" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_worksheet_chart_legend" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling put_worksheet_chart_legend" if chart_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_worksheet_chart_legend. Result: #{result.inspect}"
      end
      return result
    end

    # Update chart legend
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param legend 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [LegendResponse]
    def post_worksheet_chart_legend(name, sheet_name, chart_index, legend, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_worksheet_chart_legend ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_worksheet_chart_legend" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_worksheet_chart_legend" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling post_worksheet_chart_legend" if chart_index.nil?
      
      # verify the required parameter 'legend' is set
      fail "Missing the required parameter 'legend' when calling post_worksheet_chart_legend" if legend.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(legend)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LegendResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_worksheet_chart_legend. Result: #{result.inspect}"
      end
      return result
    end

    # Hide legend in chart
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def delete_worksheet_chart_legend(name, sheet_name, chart_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_chart_legend ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_chart_legend" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_chart_legend" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling delete_worksheet_chart_legend" if chart_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_chart_legend. Result: #{result.inspect}"
      end
      return result
    end

    # Add chart title / Set chart title visible
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param title Chart title.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [TitleResponse]
    def put_worksheet_chart_title(name, sheet_name, chart_index, title, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_worksheet_chart_title ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_worksheet_chart_title" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_worksheet_chart_title" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling put_worksheet_chart_title" if chart_index.nil?
      
      # verify the required parameter 'title' is set
      fail "Missing the required parameter 'title' when calling put_worksheet_chart_title" if title.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(title)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TitleResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_worksheet_chart_title. Result: #{result.inspect}"
      end
      return result
    end

    # Update chart title
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param title Chart title
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [TitleResponse]
    def post_worksheet_chart_title(name, sheet_name, chart_index, title, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_worksheet_chart_title ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_worksheet_chart_title" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_worksheet_chart_title" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling post_worksheet_chart_title" if chart_index.nil?
      
      # verify the required parameter 'title' is set
      fail "Missing the required parameter 'title' when calling post_worksheet_chart_title" if title.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(title)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TitleResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_worksheet_chart_title. Result: #{result.inspect}"
      end
      return result
    end

    # Hide title in chart
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def delete_worksheet_chart_title(name, sheet_name, chart_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_chart_title ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_chart_title" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_chart_title" if sheet_name.nil?
      
      # verify the required parameter 'chart_index' is set
      fail "Missing the required parameter 'chart_index' when calling delete_worksheet_chart_title" if chart_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_chart_title. Result: #{result.inspect}"
      end
      return result
    end

    # Get chart info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param chart_number The chart number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def get_worksheet_chart(name, sheet_name, chart_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_chart ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_chart" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_chart" if sheet_name.nil?
      
      # verify the required parameter 'chart_number' is set
      fail "Missing the required parameter 'chart_number' when calling get_worksheet_chart" if chart_number.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartNumber' + '}', chart_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_chart. Result: #{result.inspect}"
      end
      return result
    end

    # Get chart in specified format.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param chart_number The chart number.
    # @param format Chart format
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_worksheet_chart_with_format(name, sheet_name, chart_number, format, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_chart_with_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_chart_with_format" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_chart_with_format" if sheet_name.nil?
      
      # verify the required parameter 'chart_number' is set
      fail "Missing the required parameter 'chart_number' when calling get_worksheet_chart_with_format" if chart_number.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_worksheet_chart_with_format" if format.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartNumber' + '}', chart_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_chart_with_format. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet comments.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CommentsResponse]
    def get_work_sheet_comments(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_comments ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_comments" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_comments" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/comments".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_comments. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet comment by cell name.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CommentResponse]
    def get_work_sheet_comment(name, sheet_name, cell_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_comment ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_comment" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_comment" if sheet_name.nil?
      
      # verify the required parameter 'cell_name' is set
      fail "Missing the required parameter 'cell_name' when calling get_work_sheet_comment" if cell_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_comment. Result: #{result.inspect}"
      end
      return result
    end

    # Add worksheet&#39;s cell comment.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param comment Comment object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CommentResponse]
    def put_work_sheet_comment(name, sheet_name, cell_name, comment, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_work_sheet_comment ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_work_sheet_comment" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_work_sheet_comment" if sheet_name.nil?
      
      # verify the required parameter 'cell_name' is set
      fail "Missing the required parameter 'cell_name' when calling put_work_sheet_comment" if cell_name.nil?
      
      # verify the required parameter 'comment' is set
      fail "Missing the required parameter 'comment' when calling put_work_sheet_comment" if comment.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(comment)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_work_sheet_comment. Result: #{result.inspect}"
      end
      return result
    end

    # Update worksheet&#39;s cell comment.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param comment Comment object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_work_sheet_comment(name, sheet_name, cell_name, comment, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_work_sheet_comment ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_work_sheet_comment" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_work_sheet_comment" if sheet_name.nil?
      
      # verify the required parameter 'cell_name' is set
      fail "Missing the required parameter 'cell_name' when calling post_work_sheet_comment" if cell_name.nil?
      
      # verify the required parameter 'comment' is set
      fail "Missing the required parameter 'comment' when calling post_work_sheet_comment" if comment.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(comment)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_work_sheet_comment. Result: #{result.inspect}"
      end
      return result
    end

    # Delete worksheet&#39;s cell comment.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_work_sheet_comment(name, sheet_name, cell_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_work_sheet_comment ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_work_sheet_comment" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_work_sheet_comment" if sheet_name.nil?
      
      # verify the required parameter 'cell_name' is set
      fail "Missing the required parameter 'cell_name' when calling delete_work_sheet_comment" if cell_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_work_sheet_comment. Result: #{result.inspect}"
      end
      return result
    end

    # Copy worksheet
    # 
    # @param name 
    # @param sheet_name 
    # @param source_sheet 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage 
    # @return [BaseResponse]
    def post_copy_worksheet(name, sheet_name, source_sheet, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_copy_worksheet ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_copy_worksheet" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_copy_worksheet" if sheet_name.nil?
      
      # verify the required parameter 'source_sheet' is set
      fail "Missing the required parameter 'source_sheet' when calling post_copy_worksheet" if source_sheet.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/copy".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'sourceSheet'] = source_sheet
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_copy_worksheet. Result: #{result.inspect}"
      end
      return result
    end

    # Search text.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param text Text to search.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [TextItemsResponse]
    def post_work_sheet_text_search(name, sheet_name, text, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_work_sheet_text_search ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_work_sheet_text_search" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_work_sheet_text_search" if sheet_name.nil?
      
      # verify the required parameter 'text' is set
      fail "Missing the required parameter 'text' when calling post_work_sheet_text_search" if text.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/findText".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'text'] = text
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_work_sheet_text_search. Result: #{result.inspect}"
      end
      return result
    end

    # Calculate formula value.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param formula The formula.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [SingleValueResponse]
    def get_work_sheet_calculate_formula(name, sheet_name, formula, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_calculate_formula ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_calculate_formula" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_calculate_formula" if sheet_name.nil?
      
      # verify the required parameter 'formula' is set
      fail "Missing the required parameter 'formula' when calling get_work_sheet_calculate_formula" if formula.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/formulaResult".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'formula'] = formula
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SingleValueResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_calculate_formula. Result: #{result.inspect}"
      end
      return result
    end

    # Set freeze panes
    # 
    # @param name 
    # @param sheet_name 
    # @param row 
    # @param column 
    # @param freezed_rows 
    # @param freezed_columns 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage 
    # @return [BaseResponse]
    def put_worksheet_freeze_panes(name, sheet_name, row, column, freezed_rows, freezed_columns, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_worksheet_freeze_panes ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_worksheet_freeze_panes" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_worksheet_freeze_panes" if sheet_name.nil?
      
      # verify the required parameter 'row' is set
      fail "Missing the required parameter 'row' when calling put_worksheet_freeze_panes" if row.nil?
      
      # verify the required parameter 'column' is set
      fail "Missing the required parameter 'column' when calling put_worksheet_freeze_panes" if column.nil?
      
      # verify the required parameter 'freezed_rows' is set
      fail "Missing the required parameter 'freezed_rows' when calling put_worksheet_freeze_panes" if freezed_rows.nil?
      
      # verify the required parameter 'freezed_columns' is set
      fail "Missing the required parameter 'freezed_columns' when calling put_worksheet_freeze_panes" if freezed_columns.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/freezepanes".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'row'] = row
      query_params[:'column'] = column
      query_params[:'freezedRows'] = freezed_rows
      query_params[:'freezedColumns'] = freezed_columns
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_worksheet_freeze_panes. Result: #{result.inspect}"
      end
      return result
    end

    # Unfreeze panes
    # 
    # @param name 
    # @param sheet_name 
    # @param row 
    # @param column 
    # @param freezed_rows 
    # @param freezed_columns 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage 
    # @return [BaseResponse]
    def delete_worksheet_freeze_panes(name, sheet_name, row, column, freezed_rows, freezed_columns, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_freeze_panes ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_freeze_panes" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_freeze_panes" if sheet_name.nil?
      
      # verify the required parameter 'row' is set
      fail "Missing the required parameter 'row' when calling delete_worksheet_freeze_panes" if row.nil?
      
      # verify the required parameter 'column' is set
      fail "Missing the required parameter 'column' when calling delete_worksheet_freeze_panes" if column.nil?
      
      # verify the required parameter 'freezed_rows' is set
      fail "Missing the required parameter 'freezed_rows' when calling delete_worksheet_freeze_panes" if freezed_rows.nil?
      
      # verify the required parameter 'freezed_columns' is set
      fail "Missing the required parameter 'freezed_columns' when calling delete_worksheet_freeze_panes" if freezed_columns.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/freezepanes".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'row'] = row
      query_params[:'column'] = column
      query_params[:'freezedRows'] = freezed_rows
      query_params[:'freezedColumns'] = freezed_columns
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_freeze_panes. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet hyperlinks.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [HyperlinksResponse]
    def get_work_sheet_hyperlinks(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_hyperlinks ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_hyperlinks" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_hyperlinks" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/hyperlinks".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HyperlinksResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_hyperlinks. Result: #{result.inspect}"
      end
      return result
    end

    # Add worksheet hyperlink.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param first_row 
    # @param first_column 
    # @param total_rows 
    # @param total_columns 
    # @param address 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [HyperlinkResponse]
    def put_work_sheet_hyperlink(name, sheet_name, first_row, first_column, total_rows, total_columns, address, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_work_sheet_hyperlink ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_work_sheet_hyperlink" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_work_sheet_hyperlink" if sheet_name.nil?
      
      # verify the required parameter 'first_row' is set
      fail "Missing the required parameter 'first_row' when calling put_work_sheet_hyperlink" if first_row.nil?
      
      # verify the required parameter 'first_column' is set
      fail "Missing the required parameter 'first_column' when calling put_work_sheet_hyperlink" if first_column.nil?
      
      # verify the required parameter 'total_rows' is set
      fail "Missing the required parameter 'total_rows' when calling put_work_sheet_hyperlink" if total_rows.nil?
      
      # verify the required parameter 'total_columns' is set
      fail "Missing the required parameter 'total_columns' when calling put_work_sheet_hyperlink" if total_columns.nil?
      
      # verify the required parameter 'address' is set
      fail "Missing the required parameter 'address' when calling put_work_sheet_hyperlink" if address.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/hyperlinks".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstRow'] = first_row
      query_params[:'firstColumn'] = first_column
      query_params[:'totalRows'] = total_rows
      query_params[:'totalColumns'] = total_columns
      query_params[:'address'] = address
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HyperlinkResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_work_sheet_hyperlink. Result: #{result.inspect}"
      end
      return result
    end

    # Delete all hyperlinks in worksheet.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_work_sheet_hyperlinks(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_work_sheet_hyperlinks ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_work_sheet_hyperlinks" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_work_sheet_hyperlinks" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/hyperlinks".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_work_sheet_hyperlinks. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet hyperlink by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param hyperlink_index The hyperlink&#39;s index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [HyperlinkResponse]
    def get_work_sheet_hyperlink(name, sheet_name, hyperlink_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_hyperlink ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_hyperlink" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_hyperlink" if sheet_name.nil?
      
      # verify the required parameter 'hyperlink_index' is set
      fail "Missing the required parameter 'hyperlink_index' when calling get_work_sheet_hyperlink" if hyperlink_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'hyperlinkIndex' + '}', hyperlink_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HyperlinkResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_hyperlink. Result: #{result.inspect}"
      end
      return result
    end

    # Update worksheet hyperlink by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param hyperlink_index The hyperlink&#39;s index.
    # @param hyperlink Hyperlink object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [HyperlinkResponse]
    def post_work_sheet_hyperlink(name, sheet_name, hyperlink_index, hyperlink, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_work_sheet_hyperlink ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_work_sheet_hyperlink" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_work_sheet_hyperlink" if sheet_name.nil?
      
      # verify the required parameter 'hyperlink_index' is set
      fail "Missing the required parameter 'hyperlink_index' when calling post_work_sheet_hyperlink" if hyperlink_index.nil?
      
      # verify the required parameter 'hyperlink' is set
      fail "Missing the required parameter 'hyperlink' when calling post_work_sheet_hyperlink" if hyperlink.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'hyperlinkIndex' + '}', hyperlink_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(hyperlink)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HyperlinkResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_work_sheet_hyperlink. Result: #{result.inspect}"
      end
      return result
    end

    # Delete worksheet hyperlink by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param hyperlink_index The hyperlink&#39;s index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_work_sheet_hyperlink(name, sheet_name, hyperlink_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_work_sheet_hyperlink ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_work_sheet_hyperlink" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_work_sheet_hyperlink" if sheet_name.nil?
      
      # verify the required parameter 'hyperlink_index' is set
      fail "Missing the required parameter 'hyperlink_index' when calling delete_work_sheet_hyperlink" if hyperlink_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'hyperlinkIndex' + '}', hyperlink_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_work_sheet_hyperlink. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet merged cells.
    # 
    # @param name Document name.
    # @param sheet_name The workseet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document folder.
    # @return [MergedCellsResponse]
    def get_work_sheet_merged_cells(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_merged_cells ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_merged_cells" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_merged_cells" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/mergedCells".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MergedCellsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_merged_cells. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet merged cell by its index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param merged_cell_index Merged cell index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document folder.
    # @return [MergedCellResponse]
    def get_work_sheet_merged_cell(name, sheet_name, merged_cell_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_merged_cell ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_merged_cell" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_merged_cell" if sheet_name.nil?
      
      # verify the required parameter 'merged_cell_index' is set
      fail "Missing the required parameter 'merged_cell_index' when calling get_work_sheet_merged_cell" if merged_cell_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/mergedCells/{mergedCellIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'mergedCellIndex' + '}', merged_cell_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MergedCellResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_merged_cell. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet OLE objects info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [OleObjectsResponse]
    def get_worksheet_ole_objects(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_ole_objects ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_ole_objects" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_ole_objects" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/oleobjects".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OleObjectsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_ole_objects. Result: #{result.inspect}"
      end
      return result
    end

    # Add OLE object
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param ole_object Ole Object
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :upper_left_row Upper left row index
    # @option opts [Integer] :upper_left_column Upper left column index
    # @option opts [Integer] :height Height of oleObject, in unit of pixel
    # @option opts [Integer] :width Width of oleObject, in unit of pixel
    # @option opts [String] :ole_file OLE filename
    # @option opts [String] :image_file Image filename
    # @option opts [String] :storage The workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [OleObjectResponse]
    def put_worksheet_ole_object(name, sheet_name, ole_object, opts = {})
        
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_worksheet_ole_object ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_worksheet_ole_object" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_worksheet_ole_object" if sheet_name.nil?
      
      # verify the required parameter 'ole_object' is set
      fail "Missing the required parameter 'ole_object' when calling put_worksheet_ole_object" if ole_object.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/oleobjects".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'upperLeftRow'] = opts[:'upper_left_row'] if opts[:'upper_left_row']
      query_params[:'upperLeftColumn'] = opts[:'upper_left_column'] if opts[:'upper_left_column']
      query_params[:'height'] = opts[:'height'] if opts[:'height']
      query_params[:'width'] = opts[:'width'] if opts[:'width']
      query_params[:'oleFile'] = opts[:'ole_file'] if opts[:'ole_file']
      query_params[:'imageFile'] = opts[:'image_file'] if opts[:'image_file']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ole_object)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OleObjectResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_worksheet_ole_object. Result: #{result.inspect}"
      end
      return result
    end

    # Delete all OLE objects.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def delete_worksheet_ole_objects(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_ole_objects ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_ole_objects" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_ole_objects" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/oleobjects".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_ole_objects. Result: #{result.inspect}"
      end
      return result
    end

    # Get OLE object in specified format
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param object_number The object number.
    # @param format Ole object format
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_worksheet_ole_object_with_format(name, sheet_name, object_number, format, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_ole_object_with_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_ole_object_with_format" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_ole_object_with_format" if sheet_name.nil?
      
      # verify the required parameter 'object_number' is set
      fail "Missing the required parameter 'object_number' when calling get_worksheet_ole_object_with_format" if object_number.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_worksheet_ole_object_with_format" if format.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'objectNumber' + '}', object_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_ole_object_with_format. Result: #{result.inspect}"
      end
      return result
    end

    # Get OLE object info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param object_number The object number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def get_worksheet_ole_object(name, sheet_name, object_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_ole_object ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_ole_object" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_ole_object" if sheet_name.nil?
      
      # verify the required parameter 'object_number' is set
      fail "Missing the required parameter 'object_number' when calling get_worksheet_ole_object" if object_number.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'objectNumber' + '}', object_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_ole_object. Result: #{result.inspect}"
      end
      return result
    end

    # Update OLE object.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param ole_object_index Ole object index
    # @param ole Ole Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def post_update_worksheet_ole_object(name, sheet_name, ole_object_index, ole, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_update_worksheet_ole_object ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_update_worksheet_ole_object" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_update_worksheet_ole_object" if sheet_name.nil?
      
      # verify the required parameter 'ole_object_index' is set
      fail "Missing the required parameter 'ole_object_index' when calling post_update_worksheet_ole_object" if ole_object_index.nil?
      
      # verify the required parameter 'ole' is set
      fail "Missing the required parameter 'ole' when calling post_update_worksheet_ole_object" if ole.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'oleObjectIndex' + '}', ole_object_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ole)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_update_worksheet_ole_object. Result: #{result.inspect}"
      end
      return result
    end

    # Delete OLE object.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param ole_object_index Ole object index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def delete_worksheet_ole_object(name, sheet_name, ole_object_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_ole_object ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_ole_object" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_ole_object" if sheet_name.nil?
      
      # verify the required parameter 'ole_object_index' is set
      fail "Missing the required parameter 'ole_object_index' when calling delete_worksheet_ole_object" if ole_object_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'oleObjectIndex' + '}', ole_object_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_ole_object. Result: #{result.inspect}"
      end
      return result
    end

    # Read worksheet pictures.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [PicturesResponse]
    def get_worksheet_pictures(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_pictures ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_pictures" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_pictures" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pictures".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PicturesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_pictures. Result: #{result.inspect}"
      end
      return result
    end

    # Add a new worksheet picture.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param picture_path The picture path
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :upper_left_row The image upper left row.
    # @option opts [Integer] :upper_left_column The image upper left column.
    # @option opts [Integer] :lower_right_row The image low right row.
    # @option opts [Integer] :lower_right_column The image low right column.
    # @option opts [String] :storage The workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [PicturesResponse]
    def put_worksheet_add_picture(name, sheet_name, picture_path, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_worksheet_add_picture ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_worksheet_add_picture" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_worksheet_add_picture" if sheet_name.nil?
      
      # verify the required parameter 'picture_path' is set
      fail "Missing the required parameter 'picture_path' when calling put_worksheet_add_picture" if picture_path.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pictures".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'picturePath'] = picture_path
      query_params[:'upperLeftRow'] = opts[:'upper_left_row'] if opts[:'upper_left_row']
      query_params[:'upperLeftColumn'] = opts[:'upper_left_column'] if opts[:'upper_left_column']
      query_params[:'lowerRightRow'] = opts[:'lower_right_row'] if opts[:'lower_right_row']
      query_params[:'lowerRightColumn'] = opts[:'lower_right_column'] if opts[:'lower_right_column']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PicturesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_worksheet_add_picture. Result: #{result.inspect}"
      end
      return result
    end

    # Delete all pictures in worksheet.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_work_sheet_pictures(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_work_sheet_pictures ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_work_sheet_pictures" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_work_sheet_pictures" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pictures".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_work_sheet_pictures. Result: #{result.inspect}"
      end
      return result
    end

    # Update worksheet picture by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param picture_index The picture&#39;s index.
    # @param picture Picture object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [PictureResponse]
    def post_work_sheet_picture(name, sheet_name, picture_index, picture, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_work_sheet_picture ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_work_sheet_picture" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_work_sheet_picture" if sheet_name.nil?
      
      # verify the required parameter 'picture_index' is set
      fail "Missing the required parameter 'picture_index' when calling post_work_sheet_picture" if picture_index.nil?
      
      # verify the required parameter 'picture' is set
      fail "Missing the required parameter 'picture' when calling post_work_sheet_picture" if picture.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pictureIndex' + '}', picture_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(picture)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PictureResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_work_sheet_picture. Result: #{result.inspect}"
      end
      return result
    end

    # Delete a picture object in worksheet
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param picture_index Picture index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The workbook storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def delete_worksheet_picture(name, sheet_name, picture_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_picture ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_picture" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_picture" if sheet_name.nil?
      
      # verify the required parameter 'picture_index' is set
      fail "Missing the required parameter 'picture_index' when calling delete_worksheet_picture" if picture_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pictureIndex' + '}', picture_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_picture. Result: #{result.inspect}"
      end
      return result
    end

    # Read worksheet picture by number.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param picture_number The picture number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [PictureResponse]
    def get_worksheet_picture(name, sheet_name, picture_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_picture ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_picture" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_picture" if sheet_name.nil?
      
      # verify the required parameter 'picture_number' is set
      fail "Missing the required parameter 'picture_number' when calling get_worksheet_picture" if picture_number.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pictureNumber' + '}', picture_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PictureResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_picture. Result: #{result.inspect}"
      end
      return result
    end

    # Read worksheet picture in specified format
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param picture_number The picture number.
    # @param format Picture format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_worksheet_picture_with_format(name, sheet_name, picture_number, format, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_picture_with_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_picture_with_format" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_picture_with_format" if sheet_name.nil?
      
      # verify the required parameter 'picture_number' is set
      fail "Missing the required parameter 'picture_number' when calling get_worksheet_picture_with_format" if picture_number.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_worksheet_picture_with_format" if format.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pictureNumber' + '}', picture_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_picture_with_format. Result: #{result.inspect}"
      end
      return result
    end

    # Extract barcodes from worksheet picture.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param picture_number Picture index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Workbook folder.
    # @return [BarcodeResponseList]
    def get_extract_barcodes(name, sheet_name, picture_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_extract_barcodes ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_extract_barcodes" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_extract_barcodes" if sheet_name.nil?
      
      # verify the required parameter 'picture_number' is set
      fail "Missing the required parameter 'picture_number' when calling get_extract_barcodes" if picture_number.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/recognize".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pictureNumber' + '}', picture_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BarcodeResponseList')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_extract_barcodes. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet pivottables info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [PivotTablesResponse]
    def get_worksheet_pivot_tables(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_pivot_tables ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_pivot_tables" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_pivot_tables" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PivotTablesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_pivot_tables. Result: #{result.inspect}"
      end
      return result
    end

    # Add a pivot table into worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param request CreatePivotTableRequest dto in request body.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :source_data The data for the new PivotTable cache.
    # @option opts [String] :dest_cell_name The cell in the upper-left corner of the PivotTable report&#39;s destination range.
    # @option opts [String] :table_name The name of the new PivotTable report.
    # @option opts [BOOLEAN] :use_same_source Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory.
    # @return [PivotTableResponse]
    def put_worksheet_pivot_table(name, sheet_name, request, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_worksheet_pivot_table ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_worksheet_pivot_table" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_worksheet_pivot_table" if sheet_name.nil?
      
      # verify the required parameter 'request' is set
      fail "Missing the required parameter 'request' when calling put_worksheet_pivot_table" if request.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'sourceData'] = opts[:'source_data'] if opts[:'source_data']
      query_params[:'destCellName'] = opts[:'dest_cell_name'] if opts[:'dest_cell_name']
      query_params[:'tableName'] = opts[:'table_name'] if opts[:'table_name']
      query_params[:'useSameSource'] = opts[:'use_same_source'] if opts[:'use_same_source']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PivotTableResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_worksheet_pivot_table. Result: #{result.inspect}"
      end
      return result
    end

    # Delete worksheet pivot tables
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def delete_worksheet_pivot_tables(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_pivot_tables ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_pivot_tables" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_pivot_tables" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_pivot_tables. Result: #{result.inspect}"
      end
      return result
    end

    # Delete worksheet pivot table by index
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def delete_worksheet_pivot_table(name, sheet_name, pivot_table_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_worksheet_pivot_table ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_worksheet_pivot_table" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_worksheet_pivot_table" if sheet_name.nil?
      
      # verify the required parameter 'pivot_table_index' is set
      fail "Missing the required parameter 'pivot_table_index' when calling delete_worksheet_pivot_table" if pivot_table_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_worksheet_pivot_table. Result: #{result.inspect}"
      end
      return result
    end

    # Calculates pivottable&#39;s data to cells.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def post_worksheet_pivot_table_calculate(name, sheet_name, pivot_table_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_worksheet_pivot_table_calculate ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_worksheet_pivot_table_calculate" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_worksheet_pivot_table_calculate" if sheet_name.nil?
      
      # verify the required parameter 'pivot_table_index' is set
      fail "Missing the required parameter 'pivot_table_index' when calling post_worksheet_pivot_table_calculate" if pivot_table_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Calculate".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_worksheet_pivot_table_calculate. Result: #{result.inspect}"
      end
      return result
    end

    # Update cell style for pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param column 
    # @param row 
    # @param style Style dto in request body.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def post_pivot_table_cell_style(name, sheet_name, pivot_table_index, column, row, style, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_pivot_table_cell_style ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_pivot_table_cell_style" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_pivot_table_cell_style" if sheet_name.nil?
      
      # verify the required parameter 'pivot_table_index' is set
      fail "Missing the required parameter 'pivot_table_index' when calling post_pivot_table_cell_style" if pivot_table_index.nil?
      
      # verify the required parameter 'column' is set
      fail "Missing the required parameter 'column' when calling post_pivot_table_cell_style" if column.nil?
      
      # verify the required parameter 'row' is set
      fail "Missing the required parameter 'row' when calling post_pivot_table_cell_style" if row.nil?
      
      # verify the required parameter 'style' is set
      fail "Missing the required parameter 'style' when calling post_pivot_table_cell_style" if style.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Format".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'column'] = column
      query_params[:'row'] = row
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(style)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_pivot_table_cell_style. Result: #{result.inspect}"
      end
      return result
    end

    # Update style for pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param style Style dto in request body.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def post_pivot_table_style(name, sheet_name, pivot_table_index, style, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_pivot_table_style ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_pivot_table_style" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_pivot_table_style" if sheet_name.nil?
      
      # verify the required parameter 'pivot_table_index' is set
      fail "Missing the required parameter 'pivot_table_index' when calling post_pivot_table_style" if pivot_table_index.nil?
      
      # verify the required parameter 'style' is set
      fail "Missing the required parameter 'style' when calling post_pivot_table_style" if style.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/FormatAll".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(style)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_pivot_table_style. Result: #{result.inspect}"
      end
      return result
    end

    # Add pivot field into into pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param pivot_field_type The fields area type.
    # @param request Dto that conrains field indexes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def put_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_type, request, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_pivot_table_field ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_pivot_table_field" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_pivot_table_field" if sheet_name.nil?
      
      # verify the required parameter 'pivot_table_index' is set
      fail "Missing the required parameter 'pivot_table_index' when calling put_pivot_table_field" if pivot_table_index.nil?
      
      # verify the required parameter 'pivot_field_type' is set
      fail "Missing the required parameter 'pivot_field_type' when calling put_pivot_table_field" if pivot_field_type.nil?
      
      # verify the required parameter 'request' is set
      fail "Missing the required parameter 'request' when calling put_pivot_table_field" if request.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'pivotFieldType'] = pivot_field_type
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_pivot_table_field. Result: #{result.inspect}"
      end
      return result
    end

    # Delete pivot field into pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param pivot_field_type The fields area type.
    # @param request Dto that conrains field indexes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def delete_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_type, request, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_pivot_table_field ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_pivot_table_field" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_pivot_table_field" if sheet_name.nil?
      
      # verify the required parameter 'pivot_table_index' is set
      fail "Missing the required parameter 'pivot_table_index' when calling delete_pivot_table_field" if pivot_table_index.nil?
      
      # verify the required parameter 'pivot_field_type' is set
      fail "Missing the required parameter 'pivot_field_type' when calling delete_pivot_table_field" if pivot_field_type.nil?
      
      # verify the required parameter 'request' is set
      fail "Missing the required parameter 'request' when calling delete_pivot_table_field" if request.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'pivotFieldType'] = pivot_field_type
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_pivot_table_field. Result: #{result.inspect}"
      end
      return result
    end

    # Get pivot field into pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param pivot_field_index The field index in the base fields.
    # @param pivot_field_type The fields area type.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [PivotFieldResponse]
    def get_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_pivot_table_field ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_pivot_table_field" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_pivot_table_field" if sheet_name.nil?
      
      # verify the required parameter 'pivot_table_index' is set
      fail "Missing the required parameter 'pivot_table_index' when calling get_pivot_table_field" if pivot_table_index.nil?
      
      # verify the required parameter 'pivot_field_index' is set
      fail "Missing the required parameter 'pivot_field_index' when calling get_pivot_table_field" if pivot_field_index.nil?
      
      # verify the required parameter 'pivot_field_type' is set
      fail "Missing the required parameter 'pivot_field_type' when calling get_pivot_table_field" if pivot_field_type.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/{pivotFieldIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s).sub('{' + 'pivotFieldIndex' + '}', pivot_field_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'pivotFieldType'] = pivot_field_type
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PivotFieldResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_pivot_table_field. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet pivottable info by index.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivottable_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Workbook storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [PivotTableResponse]
    def get_worksheet_pivot_table(name, sheet_name, pivottable_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_worksheet_pivot_table ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_worksheet_pivot_table" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_worksheet_pivot_table" if sheet_name.nil?
      
      # verify the required parameter 'pivottable_index' is set
      fail "Missing the required parameter 'pivottable_index' when calling get_worksheet_pivot_table" if pivottable_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivottableIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivottableIndex' + '}', pivottable_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PivotTableResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_worksheet_pivot_table. Result: #{result.inspect}"
      end
      return result
    end

    # Move worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param moving {WorksheetMovingRequest} with moving parameters.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [WorksheetsResponse]
    def post_move_worksheet(name, sheet_name, moving, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_move_worksheet ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_move_worksheet" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_move_worksheet" if sheet_name.nil?
      
      # verify the required parameter 'moving' is set
      fail "Missing the required parameter 'moving' when calling post_move_worksheet" if moving.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/position".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(moving)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_move_worksheet. Result: #{result.inspect}"
      end
      return result
    end

    # Protect worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param protect_parameter {ProtectSheetParameter} with protection settings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document folder.
    # @return [WorksheetResponse]
    def put_protect_worksheet(name, sheet_name, protect_parameter, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_protect_worksheet ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_protect_worksheet" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_protect_worksheet" if sheet_name.nil?
      
      # verify the required parameter 'protect_parameter' is set
      fail "Missing the required parameter 'protect_parameter' when calling put_protect_worksheet" if protect_parameter.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/protection".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(protect_parameter)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_protect_worksheet. Result: #{result.inspect}"
      end
      return result
    end

    # Unprotect worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param protect_parameter {WorksheetResponse} with protection settings. Only password is used here.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document folder.
    # @return [WorksheetResponse]
    def delete_unprotect_worksheet(name, sheet_name, protect_parameter, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_unprotect_worksheet ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_unprotect_worksheet" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_unprotect_worksheet" if sheet_name.nil?
      
      # verify the required parameter 'protect_parameter' is set
      fail "Missing the required parameter 'protect_parameter' when calling delete_unprotect_worksheet" if protect_parameter.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/protection".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(protect_parameter)
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_unprotect_worksheet. Result: #{result.inspect}"
      end
      return result
    end

    # Rename worksheet
    # 
    # @param name 
    # @param sheet_name 
    # @param newname 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage 
    # @return [BaseResponse]
    def post_rename_worksheet(name, sheet_name, newname, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_rename_worksheet ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_rename_worksheet" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_rename_worksheet" if sheet_name.nil?
      
      # verify the required parameter 'newname' is set
      fail "Missing the required parameter 'newname' when calling post_rename_worksheet" if newname.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/rename".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'newname'] = newname
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_rename_worksheet. Result: #{result.inspect}"
      end
      return result
    end

    # Replace text.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param old_value The old text to replace.
    # @param new_value The new text to replace by.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [WorksheetReplaceResponse]
    def post_worsheet_text_replace(name, sheet_name, old_value, new_value, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_worsheet_text_replace ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_worsheet_text_replace" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_worsheet_text_replace" if sheet_name.nil?
      
      # verify the required parameter 'old_value' is set
      fail "Missing the required parameter 'old_value' when calling post_worsheet_text_replace" if old_value.nil?
      
      # verify the required parameter 'new_value' is set
      fail "Missing the required parameter 'new_value' when calling post_worsheet_text_replace" if new_value.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/replaceText".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'oldValue'] = old_value
      query_params[:'newValue'] = new_value
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetReplaceResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_worsheet_text_replace. Result: #{result.inspect}"
      end
      return result
    end

    # Sort worksheet range.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param cell_area The range to sort.
    # @param data_sorter {DataSorter} with sorting settings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The workbook folder.
    # @return [BaseResponse]
    def post_worksheet_range_sort(name, sheet_name, cell_area, data_sorter, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_worksheet_range_sort ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_worksheet_range_sort" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_worksheet_range_sort" if sheet_name.nil?
      
      # verify the required parameter 'cell_area' is set
      fail "Missing the required parameter 'cell_area' when calling post_worksheet_range_sort" if cell_area.nil?
      
      # verify the required parameter 'data_sorter' is set
      fail "Missing the required parameter 'data_sorter' when calling post_worksheet_range_sort" if data_sorter.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/sort".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'cellArea'] = cell_area
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(data_sorter)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_worksheet_range_sort. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet text items.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The workbook&#39;s folder.
    # @return [TextItemsResponse]
    def get_work_sheet_text_items(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_text_items ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_text_items" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_text_items" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/textItems".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_text_items. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet validations.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document folder.
    # @return [ValidationsResponse]
    def get_work_sheet_validations(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_validations ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_validations" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_validations" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/validations".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_validations. Result: #{result.inspect}"
      end
      return result
    end

    # Add worksheet validation at index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range Specified cells area
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [ValidationResponse]
    def put_work_sheet_validation(name, sheet_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_work_sheet_validation ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_work_sheet_validation" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_work_sheet_validation" if sheet_name.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/validations".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = opts[:'range'] if opts[:'range']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_work_sheet_validation. Result: #{result.inspect}"
      end
      return result
    end

    # Get worksheet validation by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param validation_index The validation index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [ValidationResponse]
    def get_work_sheet_validation(name, sheet_name, validation_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#get_work_sheet_validation ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_work_sheet_validation" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling get_work_sheet_validation" if sheet_name.nil?
      
      # verify the required parameter 'validation_index' is set
      fail "Missing the required parameter 'validation_index' when calling get_work_sheet_validation" if validation_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'validationIndex' + '}', validation_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#get_work_sheet_validation. Result: #{result.inspect}"
      end
      return result
    end

    # Update worksheet validation by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param validation_index The validation index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [ValidationResponse]
    def post_work_sheet_validation(name, sheet_name, validation_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#post_work_sheet_validation ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_work_sheet_validation" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling post_work_sheet_validation" if sheet_name.nil?
      
      # verify the required parameter 'validation_index' is set
      fail "Missing the required parameter 'validation_index' when calling post_work_sheet_validation" if validation_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'validationIndex' + '}', validation_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#post_work_sheet_validation. Result: #{result.inspect}"
      end
      return result
    end

    # Delete worksheet validation by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param validation_index The validation index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [ValidationResponse]
    def delete_work_sheet_validation(name, sheet_name, validation_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_work_sheet_validation ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_work_sheet_validation" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling delete_work_sheet_validation" if sheet_name.nil?
      
      # verify the required parameter 'validation_index' is set
      fail "Missing the required parameter 'validation_index' when calling delete_work_sheet_validation" if validation_index.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'validationIndex' + '}', validation_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_work_sheet_validation. Result: #{result.inspect}"
      end
      return result
    end

    # Change worksheet visibility.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param is_visible New worksheet visibility value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [WorksheetResponse]
    def put_change_visibility_worksheet(name, sheet_name, is_visible, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_change_visibility_worksheet ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_change_visibility_worksheet" if name.nil?
      
      # verify the required parameter 'sheet_name' is set
      fail "Missing the required parameter 'sheet_name' when calling put_change_visibility_worksheet" if sheet_name.nil?
      
      # verify the required parameter 'is_visible' is set
      fail "Missing the required parameter 'is_visible' when calling put_change_visibility_worksheet" if is_visible.nil?
      
      # resource path
      path = "/cells/{name}/worksheets/{sheetName}/visible".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'isVisible'] = is_visible
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_change_visibility_worksheet. Result: #{result.inspect}"
      end
      return result
    end

    # Protect document from changes.
    # 
    # @param name Document name.
    # @param password Modification password.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def put_document_protect_from_changes(name, password, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#put_document_protect_from_changes ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_document_protect_from_changes" if name.nil?
      
      # verify the required parameter 'password' is set
      fail "Missing the required parameter 'password' when calling put_document_protect_from_changes" if password.nil?
      
      # resource path
      path = "/cells/{name}/writeProtection".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(password)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#put_document_protect_from_changes. Result: #{result.inspect}"
      end
      return result
    end

    # Unprotect document from changes.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder Document&#39;s folder.
    # @return [BaseResponse]
    def delete_document_un_protect_from_changes(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CellsApi#delete_document_un_protect_from_changes ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_document_un_protect_from_changes" if name.nil?
      
      # resource path
      path = "/cells/{name}/writeProtection".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CellsApi#delete_document_un_protect_from_changes. Result: #{result.inspect}"
      end
      return result
    end
  end
end




