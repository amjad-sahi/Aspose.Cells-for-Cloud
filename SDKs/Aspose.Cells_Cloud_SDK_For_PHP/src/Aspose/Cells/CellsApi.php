<?php

namespace Aspose\Cells;

use Aspose\Cells\ApiException as Exception;
use Aspose\Cells\ApiClient;

class CellsApi {

    function __construct() {
        $this->apiClient = new ApiClient();
    }

    /**
     * DeleteWorksheetColumns
     * Delete worksheet columns.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * columnIndex, int: The column index. (required)

     * columns, int: The columns. (required)

     * updateReference, bool: The update reference. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return ColumnsResponse
     */
    public function DeleteWorksheetColumns($name, $sheetName, $columnIndex, $columns, $updateReference, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $columnIndex == '' || $columns == '' || $updateReference == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?columns={columns}&amp;updateReference={updateReference}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($columnIndex != null) {
            $resourcePath = str_replace("{" . "columnIndex" . "}", $this->apiClient->toQueryValue($columnIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&columnIndex={" . "columnIndex" . "}", "", $resourcePath);
        }
        if ($columns != null) {
            $resourcePath = str_replace("{" . "columns" . "}", $this->apiClient->toQueryValue($columns), $resourcePath);
        } else {
            $resourcePath = str_replace("&columns={" . "columns" . "}", "", $resourcePath);
        }
        if ($updateReference != null) {
            $resourcePath = str_replace("{" . "updateReference" . "}", $this->apiClient->toQueryValue($updateReference), $resourcePath);
        } else {
            $resourcePath = str_replace("&updateReference={" . "updateReference" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ColumnsResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetRow
     * Delete worksheet row.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet bame. (required)

     * rowIndex, int: The row index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetRow($name, $sheetName, $rowIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $rowIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($rowIndex != null) {
            $resourcePath = str_replace("{" . "rowIndex" . "}", $this->apiClient->toQueryValue($rowIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&rowIndex={" . "rowIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetRows
     * Delete several worksheet rows.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet bame. (required)

     * startrow, int: The begin row index to be operated. (required)

     * totalRows, int: Number of rows to be operated. (optional)

     * updateReference, bool: Indicates if update references in other worksheets. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetRows($name, $sheetName, $startrow, $totalRows = null, $updateReference = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $startrow == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/?startrow={startrow}&amp;appSid={appSid}&amp;totalRows={totalRows}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($startrow != null) {
            $resourcePath = str_replace("{" . "startrow" . "}", $this->apiClient->toQueryValue($startrow), $resourcePath);
        } else {
            $resourcePath = str_replace("&startrow={" . "startrow" . "}", "", $resourcePath);
        }
        if ($totalRows != null) {
            $resourcePath = str_replace("{" . "totalRows" . "}", $this->apiClient->toQueryValue($totalRows), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalRows={" . "totalRows" . "}", "", $resourcePath);
        }
        if ($updateReference != null) {
            $resourcePath = str_replace("{" . "updateReference" . "}", $this->apiClient->toQueryValue($updateReference), $resourcePath);
        } else {
            $resourcePath = str_replace("&updateReference={" . "updateReference" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetCell
     * Read cell data by cell's name.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * cellOrMethodName, string: The cell's or method name. (Method name like firstcell, endcell etc.) (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorksheetCell($name, $sheetName, $cellOrMethodName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellOrMethodName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellOrMethodName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellOrMethodName != null) {
            $resourcePath = str_replace("{" . "cellOrMethodName" . "}", $this->apiClient->toQueryValue($cellOrMethodName), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellOrMethodName={" . "cellOrMethodName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetWorksheetCells
     * Get cells info.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * offest, int: Begginig offset. (optional)

     * count, int: Maximum amount of cells in the response. (optional)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder name. (optional)

     * @return CellsResponse
     */
    public function GetWorksheetCells($name, $sheetName, $offest = null, $count = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/?appSid={appSid}&amp;offest={offest}&amp;count={count}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($offest != null) {
            $resourcePath = str_replace("{" . "offest" . "}", $this->apiClient->toQueryValue($offest), $resourcePath);
        } else {
            $resourcePath = str_replace("&offest={" . "offest" . "}", "", $resourcePath);
        }
        if ($count != null) {
            $resourcePath = str_replace("{" . "count" . "}", $this->apiClient->toQueryValue($count), $resourcePath);
        } else {
            $resourcePath = str_replace("&count={" . "count" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CellsResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetCellStyle
     * Read cell's style info.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * cellName, string: Cell's name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return StyleResponse
     */
    public function GetWorksheetCellStyle($name, $sheetName, $cellName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellName != null) {
            $resourcePath = str_replace("{" . "cellName" . "}", $this->apiClient->toQueryValue($cellName), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellName={" . "cellName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'StyleResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetColumn
     * Read worksheet column data by column's index.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * columnIndex, int: The column index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return ColumnResponse
     */
    public function GetWorksheetColumn($name, $sheetName, $columnIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $columnIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($columnIndex != null) {
            $resourcePath = str_replace("{" . "columnIndex" . "}", $this->apiClient->toQueryValue($columnIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&columnIndex={" . "columnIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ColumnResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetColumns
     * Read worksheet columns info.
     * name, string: The workbook name. (optional)

     * sheetName, string: The worksheet name. (optional)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workdook folder. (optional)

     * @return ColumnsResponse
     */
    public function GetWorksheetColumns($name = null, $sheetName = null, $storage = null, $folder = null) {
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ColumnsResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetRow
     * Read worksheet row data by row's index.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * rowIndex, int: The row index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return RowResponse
     */
    public function GetWorksheetRow($name, $sheetName, $rowIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $rowIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($rowIndex != null) {
            $resourcePath = str_replace("{" . "rowIndex" . "}", $this->apiClient->toQueryValue($rowIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&rowIndex={" . "rowIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'RowResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetRows
     * Read worksheet rows info.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workdook folder. (optional)

     * @return RowsResponse
     */
    public function GetWorksheetRows($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'RowsResponse');
        return $responseObject;
    }

    /**
     * PostClearContents
     * Clear cells contents.
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * range, string: The range. (optional)

     * startRow, int: The start row. (optional)

     * startColumn, int: The start column. (optional)

     * endRow, int: The end row. (optional)

     * endColumn, int: The end column. (optional)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostClearContents($name, $sheetName, $range = null, $startRow = null, $startColumn = null, $endRow = null, $endColumn = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/clearcontents/?appSid={appSid}&amp;range={range}&amp;startRow={startRow}&amp;startColumn={startColumn}&amp;endRow={endRow}&amp;endColumn={endColumn}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($range != null) {
            $resourcePath = str_replace("{" . "range" . "}", $this->apiClient->toQueryValue($range), $resourcePath);
        } else {
            $resourcePath = str_replace("&range={" . "range" . "}", "", $resourcePath);
        }
        if ($startRow != null) {
            $resourcePath = str_replace("{" . "startRow" . "}", $this->apiClient->toQueryValue($startRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&startRow={" . "startRow" . "}", "", $resourcePath);
        }
        if ($startColumn != null) {
            $resourcePath = str_replace("{" . "startColumn" . "}", $this->apiClient->toQueryValue($startColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&startColumn={" . "startColumn" . "}", "", $resourcePath);
        }
        if ($endRow != null) {
            $resourcePath = str_replace("{" . "endRow" . "}", $this->apiClient->toQueryValue($endRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&endRow={" . "endRow" . "}", "", $resourcePath);
        }
        if ($endColumn != null) {
            $resourcePath = str_replace("{" . "endColumn" . "}", $this->apiClient->toQueryValue($endColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&endColumn={" . "endColumn" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostClearFormats
     * Clear cells contents.
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * range, string: The range. (optional)

     * startRow, int: The start row. (optional)

     * startColumn, int: The start column. (optional)

     * endRow, int: The end row. (optional)

     * endColumn, int: The end column. (optional)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostClearFormats($name, $sheetName, $range = null, $startRow = null, $startColumn = null, $endRow = null, $endColumn = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/cleartoFormats/?appSid={appSid}&amp;range={range}&amp;startRow={startRow}&amp;startColumn={startColumn}&amp;endRow={endRow}&amp;endColumn={endColumn}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($range != null) {
            $resourcePath = str_replace("{" . "range" . "}", $this->apiClient->toQueryValue($range), $resourcePath);
        } else {
            $resourcePath = str_replace("&range={" . "range" . "}", "", $resourcePath);
        }
        if ($startRow != null) {
            $resourcePath = str_replace("{" . "startRow" . "}", $this->apiClient->toQueryValue($startRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&startRow={" . "startRow" . "}", "", $resourcePath);
        }
        if ($startColumn != null) {
            $resourcePath = str_replace("{" . "startColumn" . "}", $this->apiClient->toQueryValue($startColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&startColumn={" . "startColumn" . "}", "", $resourcePath);
        }
        if ($endRow != null) {
            $resourcePath = str_replace("{" . "endRow" . "}", $this->apiClient->toQueryValue($endRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&endRow={" . "endRow" . "}", "", $resourcePath);
        }
        if ($endColumn != null) {
            $resourcePath = str_replace("{" . "endColumn" . "}", $this->apiClient->toQueryValue($endColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&endColumn={" . "endColumn" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostColumnStyle
     * Set column style
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * columnIndex, int: The column index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * body, Style: Style dto (required)

     * @return SaaSposeResponse
     */
    public function PostColumnStyle($name, $sheetName, $columnIndex, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $columnIndex == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($columnIndex != null) {
            $resourcePath = str_replace("{" . "columnIndex" . "}", $this->apiClient->toQueryValue($columnIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&columnIndex={" . "columnIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostCopyCellIntoCell
     * Copy cell into cell
     * name, string: Workbook name. (required)

     * destCellName, string: Destination cell name (required)

     * sheetName, string: Destination worksheet name. (required)

     * worksheet, string: Source worksheet name. (required)

     * cellname, string: Source cell name (optional)

     * row, int: Source row (optional)

     * column, int: Source column (optional)

     * storage, string: Storage name (optional)

     * folder, string: Folder name (optional)

     * @return SaaSposeResponse
     */
    public function PostCopyCellIntoCell($name, $destCellName, $sheetName, $worksheet, $cellname = null, $row = null, $column = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $destCellName == '' || $sheetName == '' || $worksheet == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{destCellName}/copy/?worksheet={worksheet}&amp;appSid={appSid}&amp;cellname={cellname}&amp;row={row}&amp;column={column}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($destCellName != null) {
            $resourcePath = str_replace("{" . "destCellName" . "}", $this->apiClient->toQueryValue($destCellName), $resourcePath);
        } else {
            $resourcePath = str_replace("&destCellName={" . "destCellName" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($worksheet != null) {
            $resourcePath = str_replace("{" . "worksheet" . "}", $this->apiClient->toQueryValue($worksheet), $resourcePath);
        } else {
            $resourcePath = str_replace("&worksheet={" . "worksheet" . "}", "", $resourcePath);
        }
        if ($cellname != null) {
            $resourcePath = str_replace("{" . "cellname" . "}", $this->apiClient->toQueryValue($cellname), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellname={" . "cellname" . "}", "", $resourcePath);
        }
        if ($row != null) {
            $resourcePath = str_replace("{" . "row" . "}", $this->apiClient->toQueryValue($row), $resourcePath);
        } else {
            $resourcePath = str_replace("&row={" . "row" . "}", "", $resourcePath);
        }
        if ($column != null) {
            $resourcePath = str_replace("{" . "column" . "}", $this->apiClient->toQueryValue($column), $resourcePath);
        } else {
            $resourcePath = str_replace("&column={" . "column" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostCopyWorksheetColumns
     * Copy worksheet columns.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * sourceColumnIndex, int: Source column index (required)

     * destinationColumnIndex, int: Destination column index (required)

     * columnNumber, int: The copied column number (required)

     * worksheet, string: The Worksheet (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostCopyWorksheetColumns($name, $sheetName, $sourceColumnIndex, $destinationColumnIndex, $columnNumber, $worksheet = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $sourceColumnIndex == '' || $destinationColumnIndex == '' || $columnNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/copy/?sourceColumnIndex={sourceColumnIndex}&amp;destinationColumnIndex={destinationColumnIndex}&amp;columnNumber={columnNumber}&amp;appSid={appSid}&amp;worksheet={worksheet}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($sourceColumnIndex != null) {
            $resourcePath = str_replace("{" . "sourceColumnIndex" . "}", $this->apiClient->toQueryValue($sourceColumnIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&sourceColumnIndex={" . "sourceColumnIndex" . "}", "", $resourcePath);
        }
        if ($destinationColumnIndex != null) {
            $resourcePath = str_replace("{" . "destinationColumnIndex" . "}", $this->apiClient->toQueryValue($destinationColumnIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&destinationColumnIndex={" . "destinationColumnIndex" . "}", "", $resourcePath);
        }
        if ($columnNumber != null) {
            $resourcePath = str_replace("{" . "columnNumber" . "}", $this->apiClient->toQueryValue($columnNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&columnNumber={" . "columnNumber" . "}", "", $resourcePath);
        }
        if ($worksheet != null) {
            $resourcePath = str_replace("{" . "worksheet" . "}", $this->apiClient->toQueryValue($worksheet), $resourcePath);
        } else {
            $resourcePath = str_replace("&worksheet={" . "worksheet" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostCopyWorksheetRows
     * Copy worksheet rows.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * sourceRowIndex, int: Source row index (required)

     * destinationRowIndex, int: Destination row index (required)

     * rowNumber, int: The copied row number (required)

     * worksheet, string: worksheet (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostCopyWorksheetRows($name, $sheetName, $sourceRowIndex, $destinationRowIndex, $rowNumber, $worksheet = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $sourceRowIndex == '' || $destinationRowIndex == '' || $rowNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/copy/?sourceRowIndex={sourceRowIndex}&amp;destinationRowIndex={destinationRowIndex}&amp;rowNumber={rowNumber}&amp;appSid={appSid}&amp;worksheet={worksheet}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($sourceRowIndex != null) {
            $resourcePath = str_replace("{" . "sourceRowIndex" . "}", $this->apiClient->toQueryValue($sourceRowIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&sourceRowIndex={" . "sourceRowIndex" . "}", "", $resourcePath);
        }
        if ($destinationRowIndex != null) {
            $resourcePath = str_replace("{" . "destinationRowIndex" . "}", $this->apiClient->toQueryValue($destinationRowIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&destinationRowIndex={" . "destinationRowIndex" . "}", "", $resourcePath);
        }
        if ($rowNumber != null) {
            $resourcePath = str_replace("{" . "rowNumber" . "}", $this->apiClient->toQueryValue($rowNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&rowNumber={" . "rowNumber" . "}", "", $resourcePath);
        }
        if ($worksheet != null) {
            $resourcePath = str_replace("{" . "worksheet" . "}", $this->apiClient->toQueryValue($worksheet), $resourcePath);
        } else {
            $resourcePath = str_replace("&worksheet={" . "worksheet" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostGroupWorksheetColumns
     * Group worksheet columns.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * firstIndex, int: The first column index to be operated. (required)

     * lastIndex, int: The last column index to be operated. (required)

     * hide, bool: columns visible state (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostGroupWorksheetColumns($name, $sheetName, $firstIndex, $lastIndex, $hide = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $firstIndex == '' || $lastIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/group/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;hide={hide}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($firstIndex != null) {
            $resourcePath = str_replace("{" . "firstIndex" . "}", $this->apiClient->toQueryValue($firstIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&firstIndex={" . "firstIndex" . "}", "", $resourcePath);
        }
        if ($lastIndex != null) {
            $resourcePath = str_replace("{" . "lastIndex" . "}", $this->apiClient->toQueryValue($lastIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&lastIndex={" . "lastIndex" . "}", "", $resourcePath);
        }
        if ($hide != null) {
            $resourcePath = str_replace("{" . "hide" . "}", $this->apiClient->toQueryValue($hide), $resourcePath);
        } else {
            $resourcePath = str_replace("&hide={" . "hide" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostGroupWorksheetRows
     * Group worksheet rows.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * firstIndex, int: The first row index to be operated. (required)

     * lastIndex, int: The last row index to be operated. (required)

     * hide, bool: rows visible state (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostGroupWorksheetRows($name, $sheetName, $firstIndex, $lastIndex, $hide = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $firstIndex == '' || $lastIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/group/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;hide={hide}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($firstIndex != null) {
            $resourcePath = str_replace("{" . "firstIndex" . "}", $this->apiClient->toQueryValue($firstIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&firstIndex={" . "firstIndex" . "}", "", $resourcePath);
        }
        if ($lastIndex != null) {
            $resourcePath = str_replace("{" . "lastIndex" . "}", $this->apiClient->toQueryValue($lastIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&lastIndex={" . "lastIndex" . "}", "", $resourcePath);
        }
        if ($hide != null) {
            $resourcePath = str_replace("{" . "hide" . "}", $this->apiClient->toQueryValue($hide), $resourcePath);
        } else {
            $resourcePath = str_replace("&hide={" . "hide" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostHideWorksheetColumns
     * Hide worksheet columns.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * startColumn, int: The begin column index to be operated. (required)

     * totalColumns, int: Number of columns to be operated. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostHideWorksheetColumns($name, $sheetName, $startColumn, $totalColumns, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $startColumn == '' || $totalColumns == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/hide/?startColumn={startColumn}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($startColumn != null) {
            $resourcePath = str_replace("{" . "startColumn" . "}", $this->apiClient->toQueryValue($startColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&startColumn={" . "startColumn" . "}", "", $resourcePath);
        }
        if ($totalColumns != null) {
            $resourcePath = str_replace("{" . "totalColumns" . "}", $this->apiClient->toQueryValue($totalColumns), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalColumns={" . "totalColumns" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostHideWorksheetRows
     * Hide worksheet rows.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * startrow, int: The begin row index to be operated. (required)

     * totalRows, int: Number of rows to be operated. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostHideWorksheetRows($name, $sheetName, $startrow, $totalRows, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $startrow == '' || $totalRows == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/hide/?startrow={startrow}&amp;totalRows={totalRows}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($startrow != null) {
            $resourcePath = str_replace("{" . "startrow" . "}", $this->apiClient->toQueryValue($startrow), $resourcePath);
        } else {
            $resourcePath = str_replace("&startrow={" . "startrow" . "}", "", $resourcePath);
        }
        if ($totalRows != null) {
            $resourcePath = str_replace("{" . "totalRows" . "}", $this->apiClient->toQueryValue($totalRows), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalRows={" . "totalRows" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostRowStyle
     * Set row style.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * rowIndex, int: The row index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Style: Style dto (required)

     * @return SaaSposeResponse
     */
    public function PostRowStyle($name, $sheetName, $rowIndex, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $rowIndex == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($rowIndex != null) {
            $resourcePath = str_replace("{" . "rowIndex" . "}", $this->apiClient->toQueryValue($rowIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&rowIndex={" . "rowIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostSetCellHtmlString
     * Set htmlstring value into cell
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * cellName, string: The cell name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * file, File:  (required)

     * @return CellResponse
     */
    public function PostSetCellHtmlString($name, $sheetName, $cellName, $storage = null, $folder = null, $file) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellName == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellName != null) {
            $resourcePath = str_replace("{" . "cellName" . "}", $this->apiClient->toQueryValue($cellName), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellName={" . "cellName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CellResponse');
        return $responseObject;
    }

    /**
     * PostSetCellRangeValue
     * Set cell range value
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * cellarea, string: Cell area (like A1:C2) (required)

     * value, string: Range value (required)

     * type, string: Value data type (like int) (required)

     * storage, string: Storage name (optional)

     * folder, string: Folder name (optional)

     * @return SaaSposeResponse
     */
    public function PostSetCellRangeValue($name, $sheetName, $cellarea, $value, $type, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellarea == '' || $value == '' || $type == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/?cellarea={cellarea}&amp;value={value}&amp;type={type}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellarea != null) {
            $resourcePath = str_replace("{" . "cellarea" . "}", $this->apiClient->toQueryValue($cellarea), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellarea={" . "cellarea" . "}", "", $resourcePath);
        }
        if ($value != null) {
            $resourcePath = str_replace("{" . "value" . "}", $this->apiClient->toQueryValue($value), $resourcePath);
        } else {
            $resourcePath = str_replace("&value={" . "value" . "}", "", $resourcePath);
        }
        if ($type != null) {
            $resourcePath = str_replace("{" . "type" . "}", $this->apiClient->toQueryValue($type), $resourcePath);
        } else {
            $resourcePath = str_replace("&type={" . "type" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostSetWorksheetColumnWidth
     * Set worksheet column width.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * columnIndex, int: The column index. (required)

     * width, float: The width. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return ColumnResponse
     */
    public function PostSetWorksheetColumnWidth($name, $sheetName, $columnIndex, $width, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $columnIndex == '' || $width == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?width={width}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($columnIndex != null) {
            $resourcePath = str_replace("{" . "columnIndex" . "}", $this->apiClient->toQueryValue($columnIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&columnIndex={" . "columnIndex" . "}", "", $resourcePath);
        }
        if ($width != null) {
            $resourcePath = str_replace("{" . "width" . "}", $this->apiClient->toQueryValue($width), $resourcePath);
        } else {
            $resourcePath = str_replace("&width={" . "width" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ColumnResponse');
        return $responseObject;
    }

    /**
     * PostUngroupWorksheetColumns
     * Ungroup worksheet columns.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * firstIndex, int: The first column index to be operated. (required)

     * lastIndex, int: The last column index to be operated. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostUngroupWorksheetColumns($name, $sheetName, $firstIndex, $lastIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $firstIndex == '' || $lastIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/ungroup/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($firstIndex != null) {
            $resourcePath = str_replace("{" . "firstIndex" . "}", $this->apiClient->toQueryValue($firstIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&firstIndex={" . "firstIndex" . "}", "", $resourcePath);
        }
        if ($lastIndex != null) {
            $resourcePath = str_replace("{" . "lastIndex" . "}", $this->apiClient->toQueryValue($lastIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&lastIndex={" . "lastIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostUngroupWorksheetRows
     * Ungroup worksheet rows.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * firstIndex, int: The first row index to be operated. (required)

     * lastIndex, int: The last row index to be operated. (required)

     * isAll, bool: Is all row to be operated (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostUngroupWorksheetRows($name, $sheetName, $firstIndex, $lastIndex, $isAll = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $firstIndex == '' || $lastIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/ungroup/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;isAll={isAll}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($firstIndex != null) {
            $resourcePath = str_replace("{" . "firstIndex" . "}", $this->apiClient->toQueryValue($firstIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&firstIndex={" . "firstIndex" . "}", "", $resourcePath);
        }
        if ($lastIndex != null) {
            $resourcePath = str_replace("{" . "lastIndex" . "}", $this->apiClient->toQueryValue($lastIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&lastIndex={" . "lastIndex" . "}", "", $resourcePath);
        }
        if ($isAll != null) {
            $resourcePath = str_replace("{" . "isAll" . "}", $this->apiClient->toQueryValue($isAll), $resourcePath);
        } else {
            $resourcePath = str_replace("&isAll={" . "isAll" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostUnhideWorksheetColumns
     * Unhide worksheet columns.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * startcolumn, int: The begin column index to be operated. (required)

     * totalColumns, int: Number of columns to be operated. (required)

     * width, float: The new column width. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostUnhideWorksheetColumns($name, $sheetName, $startcolumn, $totalColumns, $width = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $startcolumn == '' || $totalColumns == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/unhide/?startcolumn={startcolumn}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;width={width}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($startcolumn != null) {
            $resourcePath = str_replace("{" . "startcolumn" . "}", $this->apiClient->toQueryValue($startcolumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&startcolumn={" . "startcolumn" . "}", "", $resourcePath);
        }
        if ($totalColumns != null) {
            $resourcePath = str_replace("{" . "totalColumns" . "}", $this->apiClient->toQueryValue($totalColumns), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalColumns={" . "totalColumns" . "}", "", $resourcePath);
        }
        if ($width != null) {
            $resourcePath = str_replace("{" . "width" . "}", $this->apiClient->toQueryValue($width), $resourcePath);
        } else {
            $resourcePath = str_replace("&width={" . "width" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostUnhideWorksheetRows
     * Unhide worksheet rows.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * startrow, int: The begin row index to be operated. (required)

     * totalRows, int: Number of rows to be operated. (required)

     * height, float: The new row height. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostUnhideWorksheetRows($name, $sheetName, $startrow, $totalRows, $height = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $startrow == '' || $totalRows == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/unhide/?startrow={startrow}&amp;totalRows={totalRows}&amp;appSid={appSid}&amp;height={height}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($startrow != null) {
            $resourcePath = str_replace("{" . "startrow" . "}", $this->apiClient->toQueryValue($startrow), $resourcePath);
        } else {
            $resourcePath = str_replace("&startrow={" . "startrow" . "}", "", $resourcePath);
        }
        if ($totalRows != null) {
            $resourcePath = str_replace("{" . "totalRows" . "}", $this->apiClient->toQueryValue($totalRows), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalRows={" . "totalRows" . "}", "", $resourcePath);
        }
        if ($height != null) {
            $resourcePath = str_replace("{" . "height" . "}", $this->apiClient->toQueryValue($height), $resourcePath);
        } else {
            $resourcePath = str_replace("&height={" . "height" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostUpdateWorksheetCellStyle
     * Update cell's style.
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * cellName, string: The cell name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * body, Style: with update style settings. (required)

     * @return StyleResponse
     */
    public function PostUpdateWorksheetCellStyle($name, $sheetName, $cellName, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellName != null) {
            $resourcePath = str_replace("{" . "cellName" . "}", $this->apiClient->toQueryValue($cellName), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellName={" . "cellName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'StyleResponse');
        return $responseObject;
    }

    /**
     * PostUpdateWorksheetRangeStyle
     * Update cell's range style.
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * range, string: The range. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * body, Style: with update style settings. (required)

     * @return SaaSposeResponse
     */
    public function PostUpdateWorksheetRangeStyle($name, $sheetName, $range, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $range == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/style/?range={range}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($range != null) {
            $resourcePath = str_replace("{" . "range" . "}", $this->apiClient->toQueryValue($range), $resourcePath);
        } else {
            $resourcePath = str_replace("&range={" . "range" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostUpdateWorksheetRow
     * Update worksheet row.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * rowIndex, int: The row index. (required)

     * height, float: The new row height. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return RowResponse
     */
    public function PostUpdateWorksheetRow($name, $sheetName, $rowIndex, $height = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $rowIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;height={height}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($rowIndex != null) {
            $resourcePath = str_replace("{" . "rowIndex" . "}", $this->apiClient->toQueryValue($rowIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&rowIndex={" . "rowIndex" . "}", "", $resourcePath);
        }
        if ($height != null) {
            $resourcePath = str_replace("{" . "height" . "}", $this->apiClient->toQueryValue($height), $resourcePath);
        } else {
            $resourcePath = str_replace("&height={" . "height" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'RowResponse');
        return $responseObject;
    }

    /**
     * PostWorksheetCellSetValue
     * Set cell value.
     * name, string: The document name. (required)

     * sheetName, string: The worksheet name. (required)

     * cellName, string: The cell name. (required)

     * value, string: The cell value. (optional)

     * type, string: The value type. (optional)

     * formula, string: Formula for cell (optional)

     * storage, string: Workbook storage. (optional)

     * folder, string: The document folder. (optional)

     * @return CellResponse
     */
    public function PostWorksheetCellSetValue($name, $sheetName, $cellName, $value = null, $type = null, $formula = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/?appSid={appSid}&amp;value={value}&amp;type={type}&amp;formula={formula}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellName != null) {
            $resourcePath = str_replace("{" . "cellName" . "}", $this->apiClient->toQueryValue($cellName), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellName={" . "cellName" . "}", "", $resourcePath);
        }
        if ($value != null) {
            $resourcePath = str_replace("{" . "value" . "}", $this->apiClient->toQueryValue($value), $resourcePath);
        } else {
            $resourcePath = str_replace("&value={" . "value" . "}", "", $resourcePath);
        }
        if ($type != null) {
            $resourcePath = str_replace("{" . "type" . "}", $this->apiClient->toQueryValue($type), $resourcePath);
        } else {
            $resourcePath = str_replace("&type={" . "type" . "}", "", $resourcePath);
        }
        if ($formula != null) {
            $resourcePath = str_replace("{" . "formula" . "}", $this->apiClient->toQueryValue($formula), $resourcePath);
        } else {
            $resourcePath = str_replace("&formula={" . "formula" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CellResponse');
        return $responseObject;
    }

    /**
     * PostWorksheetMerge
     * Merge cells.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * startRow, int: The start row. (required)

     * startColumn, int: The start column. (required)

     * totalRows, int: The total rows (required)

     * totalColumns, int: The total columns. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostWorksheetMerge($name, $sheetName, $startRow, $startColumn, $totalRows, $totalColumns, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $startRow == '' || $startColumn == '' || $totalRows == '' || $totalColumns == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/merge/?startRow={startRow}&amp;startColumn={startColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($startRow != null) {
            $resourcePath = str_replace("{" . "startRow" . "}", $this->apiClient->toQueryValue($startRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&startRow={" . "startRow" . "}", "", $resourcePath);
        }
        if ($startColumn != null) {
            $resourcePath = str_replace("{" . "startColumn" . "}", $this->apiClient->toQueryValue($startColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&startColumn={" . "startColumn" . "}", "", $resourcePath);
        }
        if ($totalRows != null) {
            $resourcePath = str_replace("{" . "totalRows" . "}", $this->apiClient->toQueryValue($totalRows), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalRows={" . "totalRows" . "}", "", $resourcePath);
        }
        if ($totalColumns != null) {
            $resourcePath = str_replace("{" . "totalColumns" . "}", $this->apiClient->toQueryValue($totalColumns), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalColumns={" . "totalColumns" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostWorksheetUnmerge
     * Unmerge cells.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * startRow, int: The start row. (required)

     * startColumn, int: The start column. (required)

     * totalRows, int: The total rows (required)

     * totalColumns, int: The total columns. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostWorksheetUnmerge($name, $sheetName, $startRow, $startColumn, $totalRows, $totalColumns, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $startRow == '' || $startColumn == '' || $totalRows == '' || $totalColumns == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/unmerge/?startRow={startRow}&amp;startColumn={startColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($startRow != null) {
            $resourcePath = str_replace("{" . "startRow" . "}", $this->apiClient->toQueryValue($startRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&startRow={" . "startRow" . "}", "", $resourcePath);
        }
        if ($startColumn != null) {
            $resourcePath = str_replace("{" . "startColumn" . "}", $this->apiClient->toQueryValue($startColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&startColumn={" . "startColumn" . "}", "", $resourcePath);
        }
        if ($totalRows != null) {
            $resourcePath = str_replace("{" . "totalRows" . "}", $this->apiClient->toQueryValue($totalRows), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalRows={" . "totalRows" . "}", "", $resourcePath);
        }
        if ($totalColumns != null) {
            $resourcePath = str_replace("{" . "totalColumns" . "}", $this->apiClient->toQueryValue($totalColumns), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalColumns={" . "totalColumns" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PutInsertWorksheetColumns
     * Insert worksheet columns.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * columnIndex, int: The column index. (required)

     * columns, int: The columns. (required)

     * updateReference, bool: The update reference. (optional)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return ColumnsResponse
     */
    public function PutInsertWorksheetColumns($name, $sheetName, $columnIndex, $columns, $updateReference = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $columnIndex == '' || $columns == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?columns={columns}&amp;appSid={appSid}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($columnIndex != null) {
            $resourcePath = str_replace("{" . "columnIndex" . "}", $this->apiClient->toQueryValue($columnIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&columnIndex={" . "columnIndex" . "}", "", $resourcePath);
        }
        if ($columns != null) {
            $resourcePath = str_replace("{" . "columns" . "}", $this->apiClient->toQueryValue($columns), $resourcePath);
        } else {
            $resourcePath = str_replace("&columns={" . "columns" . "}", "", $resourcePath);
        }
        if ($updateReference != null) {
            $resourcePath = str_replace("{" . "updateReference" . "}", $this->apiClient->toQueryValue($updateReference), $resourcePath);
        } else {
            $resourcePath = str_replace("&updateReference={" . "updateReference" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ColumnsResponse');
        return $responseObject;
    }

    /**
     * PutInsertWorksheetRow
     * Insert new worksheet row.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * rowIndex, int: The new row index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return RowResponse
     */
    public function PutInsertWorksheetRow($name, $sheetName, $rowIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $rowIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($rowIndex != null) {
            $resourcePath = str_replace("{" . "rowIndex" . "}", $this->apiClient->toQueryValue($rowIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&rowIndex={" . "rowIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'RowResponse');
        return $responseObject;
    }

    /**
     * PutInsertWorksheetRows
     * Insert several new worksheet rows.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * startrow, int: The begin row index to be operated. (required)

     * totalRows, int: Number of rows to be operated. (optional)

     * updateReference, bool: Indicates if update references in other worksheets. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PutInsertWorksheetRows($name, $sheetName, $startrow, $totalRows = null, $updateReference = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $startrow == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/?startrow={startrow}&amp;appSid={appSid}&amp;totalRows={totalRows}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($startrow != null) {
            $resourcePath = str_replace("{" . "startrow" . "}", $this->apiClient->toQueryValue($startrow), $resourcePath);
        } else {
            $resourcePath = str_replace("&startrow={" . "startrow" . "}", "", $resourcePath);
        }
        if ($totalRows != null) {
            $resourcePath = str_replace("{" . "totalRows" . "}", $this->apiClient->toQueryValue($totalRows), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalRows={" . "totalRows" . "}", "", $resourcePath);
        }
        if ($updateReference != null) {
            $resourcePath = str_replace("{" . "updateReference" . "}", $this->apiClient->toQueryValue($updateReference), $resourcePath);
        } else {
            $resourcePath = str_replace("&updateReference={" . "updateReference" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetAutoshape
     * Get autoshape info.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * autoshapeNumber, int: The autoshape number. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorksheetAutoshape($name, $sheetName, $autoshapeNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $autoshapeNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($autoshapeNumber != null) {
            $resourcePath = str_replace("{" . "autoshapeNumber" . "}", $this->apiClient->toQueryValue($autoshapeNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&autoshapeNumber={" . "autoshapeNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetWorksheetAutoshapes
     * Get worksheet autoshapes info.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return AutoShapesResponse
     */
    public function GetWorksheetAutoshapes($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/autoshapes/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'AutoShapesResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetAutoshapeWithFormat
     * Get autoshape info in some format.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * autoshapeNumber, int: The autoshape number. (required)

     * format, string: Autoshape conversion format. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorksheetAutoshapeWithFormat($name, $sheetName, $autoshapeNumber, $format, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $autoshapeNumber == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($autoshapeNumber != null) {
            $resourcePath = str_replace("{" . "autoshapeNumber" . "}", $this->apiClient->toQueryValue($autoshapeNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&autoshapeNumber={" . "autoshapeNumber" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetExtractBarcodes
     * Extract barcodes from worksheet picture.
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * pictureNumber, int: Picture index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Workbook folder. (optional)

     * @return BarcodeResponseList
     */
    public function GetExtractBarcodes($name, $sheetName, $pictureNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $pictureNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/recognize/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($pictureNumber != null) {
            $resourcePath = str_replace("{" . "pictureNumber" . "}", $this->apiClient->toQueryValue($pictureNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pictureNumber={" . "pictureNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'BarcodeResponseList');
        return $responseObject;
    }

    /**
     * GetChartArea
     * Get chart area info.
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Workbook folder. (optional)

     * @return ChartAreaResponse
     */
    public function GetChartArea($name, $sheetName, $chartIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ChartAreaResponse');
        return $responseObject;
    }

    /**
     * GetChartAreaBorder
     * Get chart area border info.
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Workbook folder. (optional)

     * @return LineResponse
     */
    public function GetChartAreaBorder($name, $sheetName, $chartIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/border/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'LineResponse');
        return $responseObject;
    }

    /**
     * GetChartAreaFillFormat
     * Get chart area fill format info.
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Workbook folder. (optional)

     * @return FillFormatResponse
     */
    public function GetChartAreaFillFormat($name, $sheetName, $chartIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/fillFormat/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'FillFormatResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetChartLegend
     * Hide legend in chart
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetChartLegend($name, $sheetName, $chartIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetChartTitle
     * Hide title in chart
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetChartTitle($name, $sheetName, $chartIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetClearCharts
     * Clear the charts.
     * name, string: Workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetClearCharts($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetDeleteChart
     * Delete worksheet chart by index.
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return ChartsResponse
     */
    public function DeleteWorksheetDeleteChart($name, $sheetName, $chartIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ChartsResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetChart
     * Get chart info.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartNumber, int: The chart number. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorksheetChart($name, $sheetName, $chartNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartNumber != null) {
            $resourcePath = str_replace("{" . "chartNumber" . "}", $this->apiClient->toQueryValue($chartNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartNumber={" . "chartNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetWorksheetChartLegend
     * Get chart legend
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return LegendResponse
     */
    public function GetWorksheetChartLegend($name, $sheetName, $chartIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'LegendResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetCharts
     * Get worksheet charts info.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return ChartsResponse
     */
    public function GetWorksheetCharts($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ChartsResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetChartWithFormat
     * Get chart in some format.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartNumber, int: The chart number. (required)

     * format, string: Chart conversion format. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorksheetChartWithFormat($name, $sheetName, $chartNumber, $format, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartNumber == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartNumber != null) {
            $resourcePath = str_replace("{" . "chartNumber" . "}", $this->apiClient->toQueryValue($chartNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartNumber={" . "chartNumber" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostWorksheetChartLegend
     * Update chart legend
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * body, Legend:  (required)

     * @return LegendResponse
     */
    public function PostWorksheetChartLegend($name, $sheetName, $chartIndex, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'LegendResponse');
        return $responseObject;
    }

    /**
     * PostWorksheetChartTitle
     * Update chart title
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * body, Title: Chart title (required)

     * @return TitleResponse
     */
    public function PostWorksheetChartTitle($name, $sheetName, $chartIndex, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TitleResponse');
        return $responseObject;
    }

    /**
     * PutWorksheetAddChart
     * Add new chart to worksheet.
     * name, string: Workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * chartType, string: Chart type, please refer property Type in chart resource. (required)

     * upperLeftRow, int: New chart upper left row. (optional)

     * upperLeftColumn, int: New chart upperleft column. (optional)

     * lowerRightRow, int: New chart lower right row. (optional)

     * lowerRightColumn, int: New chart lower right column. (optional)

     * area, string: Specifies values from which to plot the data series. (optional)

     * isVertical, bool: Specifies whether to plot the series from a range of cell values by row or by column. (optional)

     * categoryData, string: Gets or sets the range of category Axis values. It can be a range of cells (such as, d1:e10). (optional)

     * isAutoGetSerialName, bool: Specifies whether auto update serial name. (optional)

     * title, string: Specifies chart title name. (optional)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return ChartsResponse
     */
    public function PutWorksheetAddChart($name, $sheetName, $chartType, $upperLeftRow = null, $upperLeftColumn = null, $lowerRightRow = null, $lowerRightColumn = null, $area = null, $isVertical = null, $categoryData = null, $isAutoGetSerialName = null, $title = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartType == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/?chartType={chartType}&amp;appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;lowerRightRow={lowerRightRow}&amp;lowerRightColumn={lowerRightColumn}&amp;area={area}&amp;isVertical={isVertical}&amp;categoryData={categoryData}&amp;isAutoGetSerialName={isAutoGetSerialName}&amp;title={title}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartType != null) {
            $resourcePath = str_replace("{" . "chartType" . "}", $this->apiClient->toQueryValue($chartType), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartType={" . "chartType" . "}", "", $resourcePath);
        }
        if ($upperLeftRow != null) {
            $resourcePath = str_replace("{" . "upperLeftRow" . "}", $this->apiClient->toQueryValue($upperLeftRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&upperLeftRow={" . "upperLeftRow" . "}", "", $resourcePath);
        }
        if ($upperLeftColumn != null) {
            $resourcePath = str_replace("{" . "upperLeftColumn" . "}", $this->apiClient->toQueryValue($upperLeftColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&upperLeftColumn={" . "upperLeftColumn" . "}", "", $resourcePath);
        }
        if ($lowerRightRow != null) {
            $resourcePath = str_replace("{" . "lowerRightRow" . "}", $this->apiClient->toQueryValue($lowerRightRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&lowerRightRow={" . "lowerRightRow" . "}", "", $resourcePath);
        }
        if ($lowerRightColumn != null) {
            $resourcePath = str_replace("{" . "lowerRightColumn" . "}", $this->apiClient->toQueryValue($lowerRightColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&lowerRightColumn={" . "lowerRightColumn" . "}", "", $resourcePath);
        }
        if ($area != null) {
            $resourcePath = str_replace("{" . "area" . "}", $this->apiClient->toQueryValue($area), $resourcePath);
        } else {
            $resourcePath = str_replace("&area={" . "area" . "}", "", $resourcePath);
        }
        if ($isVertical != null) {
            $resourcePath = str_replace("{" . "isVertical" . "}", $this->apiClient->toQueryValue($isVertical), $resourcePath);
        } else {
            $resourcePath = str_replace("&isVertical={" . "isVertical" . "}", "", $resourcePath);
        }
        if ($categoryData != null) {
            $resourcePath = str_replace("{" . "categoryData" . "}", $this->apiClient->toQueryValue($categoryData), $resourcePath);
        } else {
            $resourcePath = str_replace("&categoryData={" . "categoryData" . "}", "", $resourcePath);
        }
        if ($isAutoGetSerialName != null) {
            $resourcePath = str_replace("{" . "isAutoGetSerialName" . "}", $this->apiClient->toQueryValue($isAutoGetSerialName), $resourcePath);
        } else {
            $resourcePath = str_replace("&isAutoGetSerialName={" . "isAutoGetSerialName" . "}", "", $resourcePath);
        }
        if ($title != null) {
            $resourcePath = str_replace("{" . "title" . "}", $this->apiClient->toQueryValue($title), $resourcePath);
        } else {
            $resourcePath = str_replace("&title={" . "title" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ChartsResponse');
        return $responseObject;
    }

    /**
     * PutWorksheetChartLegend
     * Show legend in chart
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function PutWorksheetChartLegend($name, $sheetName, $chartIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PutWorksheetChartTitle
     * Add chart title / Set chart title visible
     * name, string: Workbook name. (required)

     * sheetName, string: Worksheet name. (required)

     * chartIndex, int: The chart index. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * body, Title: Chart title. (required)

     * @return TitleResponse
     */
    public function PutWorksheetChartTitle($name, $sheetName, $chartIndex, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $chartIndex == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($chartIndex != null) {
            $resourcePath = str_replace("{" . "chartIndex" . "}", $this->apiClient->toQueryValue($chartIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&chartIndex={" . "chartIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TitleResponse');
        return $responseObject;
    }

    /**
     * DeleteWorkSheetHyperlink
     * Delete worksheet hyperlink by index.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * hyperlinkIndex, int: The hyperlink's index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorkSheetHyperlink($name, $sheetName, $hyperlinkIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $hyperlinkIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($hyperlinkIndex != null) {
            $resourcePath = str_replace("{" . "hyperlinkIndex" . "}", $this->apiClient->toQueryValue($hyperlinkIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&hyperlinkIndex={" . "hyperlinkIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorkSheetHyperlinks
     * Delete all hyperlinks in worksheet.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorkSheetHyperlinks($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheetHyperlink
     * Get worksheet hyperlink by index.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * hyperlinkIndex, int: The hyperlink's index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return HyperlinkResponse
     */
    public function GetWorkSheetHyperlink($name, $sheetName, $hyperlinkIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $hyperlinkIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($hyperlinkIndex != null) {
            $resourcePath = str_replace("{" . "hyperlinkIndex" . "}", $this->apiClient->toQueryValue($hyperlinkIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&hyperlinkIndex={" . "hyperlinkIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'HyperlinkResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheetHyperlinks
     * Get worksheet hyperlinks.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return HyperlinksResponse
     */
    public function GetWorkSheetHyperlinks($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'HyperlinksResponse');
        return $responseObject;
    }

    /**
     * PostWorkSheetHyperlink
     * Update worksheet hyperlink by index.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * hyperlinkIndex, int: The hyperlink's index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Hyperlink: Hyperlink object (required)

     * @return HyperlinkResponse
     */
    public function PostWorkSheetHyperlink($name, $sheetName, $hyperlinkIndex, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $hyperlinkIndex == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($hyperlinkIndex != null) {
            $resourcePath = str_replace("{" . "hyperlinkIndex" . "}", $this->apiClient->toQueryValue($hyperlinkIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&hyperlinkIndex={" . "hyperlinkIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'HyperlinkResponse');
        return $responseObject;
    }

    /**
     * PutWorkSheetHyperlink
     * Add worksheet hyperlink.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * firstRow, int:  (required)

     * firstColumn, int:  (required)

     * totalRows, int:  (required)

     * totalColumns, int:  (required)

     * address, string:  (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return HyperlinkResponse
     */
    public function PutWorkSheetHyperlink($name, $sheetName, $firstRow, $firstColumn, $totalRows, $totalColumns, $address, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $firstRow == '' || $firstColumn == '' || $totalRows == '' || $totalColumns == '' || $address == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;firstRow={firstRow}&amp;firstColumn={firstColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;address={address}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($firstRow != null) {
            $resourcePath = str_replace("{" . "firstRow" . "}", $this->apiClient->toQueryValue($firstRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&firstRow={" . "firstRow" . "}", "", $resourcePath);
        }
        if ($firstColumn != null) {
            $resourcePath = str_replace("{" . "firstColumn" . "}", $this->apiClient->toQueryValue($firstColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&firstColumn={" . "firstColumn" . "}", "", $resourcePath);
        }
        if ($totalRows != null) {
            $resourcePath = str_replace("{" . "totalRows" . "}", $this->apiClient->toQueryValue($totalRows), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalRows={" . "totalRows" . "}", "", $resourcePath);
        }
        if ($totalColumns != null) {
            $resourcePath = str_replace("{" . "totalColumns" . "}", $this->apiClient->toQueryValue($totalColumns), $resourcePath);
        } else {
            $resourcePath = str_replace("&totalColumns={" . "totalColumns" . "}", "", $resourcePath);
        }
        if ($address != null) {
            $resourcePath = str_replace("{" . "address" . "}", $this->apiClient->toQueryValue($address), $resourcePath);
        } else {
            $resourcePath = str_replace("&address={" . "address" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'HyperlinkResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetOleObject
     * Delete OLE object.
     * name, string: The workbook name. (required)

     * sheetName, string: The worsheet name. (required)

     * oleObjectIndex, int: Ole object index (required)

     * storage, string: The workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetOleObject($name, $sheetName, $oleObjectIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $oleObjectIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($oleObjectIndex != null) {
            $resourcePath = str_replace("{" . "oleObjectIndex" . "}", $this->apiClient->toQueryValue($oleObjectIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&oleObjectIndex={" . "oleObjectIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetOleObjects
     * Delete all OLE objects.
     * name, string: The workbook name. (required)

     * sheetName, string: The worsheet name. (required)

     * storage, string: The workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetOleObjects($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetOleObject
     * Get OLE object info.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * objectNumber, int: The object number. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorksheetOleObject($name, $sheetName, $objectNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $objectNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($objectNumber != null) {
            $resourcePath = str_replace("{" . "objectNumber" . "}", $this->apiClient->toQueryValue($objectNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&objectNumber={" . "objectNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetWorksheetOleObjects
     * Get worksheet OLE objects info.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return OleObjectsResponse
     */
    public function GetWorksheetOleObjects($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'OleObjectsResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetOleObjectWithFormat
     * Get OLE object info or get the OLE object in some format.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * objectNumber, int: The object number. (required)

     * format, string: Object conversion format. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorksheetOleObjectWithFormat($name, $sheetName, $objectNumber, $format, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $objectNumber == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($objectNumber != null) {
            $resourcePath = str_replace("{" . "objectNumber" . "}", $this->apiClient->toQueryValue($objectNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&objectNumber={" . "objectNumber" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostUpdateWorksheetOleObject
     * Update OLE object.
     * name, string: The workbook name. (required)

     * sheetName, string: The worsheet name. (required)

     * oleObjectIndex, int: Ole object index (required)

     * storage, string: The workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * body, OleObject: Ole Object (required)

     * @return SaaSposeResponse
     */
    public function PostUpdateWorksheetOleObject($name, $sheetName, $oleObjectIndex, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $oleObjectIndex == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($oleObjectIndex != null) {
            $resourcePath = str_replace("{" . "oleObjectIndex" . "}", $this->apiClient->toQueryValue($oleObjectIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&oleObjectIndex={" . "oleObjectIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PutWorksheetOleObject
     * Add OLE object
     * name, string: The workbook name. (required)

     * sheetName, string: The worsheet name. (required)

     * upperLeftRow, int: Upper left row index (optional)

     * upperLeftColumn, int: Upper left column index (optional)

     * height, int: Height of oleObject, in unit of pixel (optional)

     * width, int: Width of oleObject, in unit of pixel (optional)

     * oleFile, string: OLE filename (optional)

     * imageFile, string: Image filename (optional)

     * storage, string: The workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * body, OleObject: Ole Object (required)

     * @return OleObjectResponse
     */
    public function PutWorksheetOleObject($name, $sheetName, $upperLeftRow = null, $upperLeftColumn = null, $height = null, $width = null, $oleFile = null, $imageFile = null, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;height={height}&amp;width={width}&amp;oleFile={oleFile}&amp;imageFile={imageFile}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($upperLeftRow != null) {
            $resourcePath = str_replace("{" . "upperLeftRow" . "}", $this->apiClient->toQueryValue($upperLeftRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&upperLeftRow={" . "upperLeftRow" . "}", "", $resourcePath);
        }
        if ($upperLeftColumn != null) {
            $resourcePath = str_replace("{" . "upperLeftColumn" . "}", $this->apiClient->toQueryValue($upperLeftColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&upperLeftColumn={" . "upperLeftColumn" . "}", "", $resourcePath);
        }
        if ($height != null) {
            $resourcePath = str_replace("{" . "height" . "}", $this->apiClient->toQueryValue($height), $resourcePath);
        } else {
            $resourcePath = str_replace("&height={" . "height" . "}", "", $resourcePath);
        }
        if ($width != null) {
            $resourcePath = str_replace("{" . "width" . "}", $this->apiClient->toQueryValue($width), $resourcePath);
        } else {
            $resourcePath = str_replace("&width={" . "width" . "}", "", $resourcePath);
        }
        if ($oleFile != null) {
            $resourcePath = str_replace("{" . "oleFile" . "}", $this->apiClient->toQueryValue($oleFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&oleFile={" . "oleFile" . "}", "", $resourcePath);
        }
        if ($imageFile != null) {
            $resourcePath = str_replace("{" . "imageFile" . "}", $this->apiClient->toQueryValue($imageFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&imageFile={" . "imageFile" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'OleObjectResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetPicture
     * Delete a picture object in worksheet
     * name, string: The workbook name. (required)

     * sheetName, string: The worsheet name. (required)

     * pictureIndex, int: Picture index (required)

     * storage, string: The workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetPicture($name, $sheetName, $pictureIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $pictureIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($pictureIndex != null) {
            $resourcePath = str_replace("{" . "pictureIndex" . "}", $this->apiClient->toQueryValue($pictureIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&pictureIndex={" . "pictureIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorkSheetPictures
     * Delete all pictures in worksheet.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorkSheetPictures($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetPicture
     * GRead worksheet picture by number.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * pictureNumber, int: The picture number. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorksheetPicture($name, $sheetName, $pictureNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $pictureNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($pictureNumber != null) {
            $resourcePath = str_replace("{" . "pictureNumber" . "}", $this->apiClient->toQueryValue($pictureNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pictureNumber={" . "pictureNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetWorksheetPictures
     * Read worksheet pictures.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return PicturesResponse
     */
    public function GetWorksheetPictures($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'PicturesResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetPictureWithFormat
     * GRead worksheet picture by number.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * pictureNumber, int: The picture number. (required)

     * format, string: Picture conversion format. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorksheetPictureWithFormat($name, $sheetName, $pictureNumber, $format, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $pictureNumber == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($pictureNumber != null) {
            $resourcePath = str_replace("{" . "pictureNumber" . "}", $this->apiClient->toQueryValue($pictureNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pictureNumber={" . "pictureNumber" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostWorkSheetPicture
     * Update worksheet picture by index.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * pictureIndex, int: The picture's index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Picture: Picture object (required)

     * @return PictureResponse
     */
    public function PostWorkSheetPicture($name, $sheetName, $pictureIndex, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $pictureIndex == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($pictureIndex != null) {
            $resourcePath = str_replace("{" . "pictureIndex" . "}", $this->apiClient->toQueryValue($pictureIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&pictureIndex={" . "pictureIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'PictureResponse');
        return $responseObject;
    }

    /**
     * PutWorksheetAddPicture
     * Add a new worksheet picture.
     * name, string: The workbook name. (required)

     * sheetName, string: The worsheet name. (required)

     * upperLeftRow, int: The image upper left row. (optional)

     * upperLeftColumn, int: The image upper left column. (optional)

     * lowerRightRow, int: The image low right row. (optional)

     * lowerRightColumn, int: The image low right column. (optional)

     * picturePath, string: The picture path, if not provided the picture data is inspected in the request body. (optional)

     * storage, string: The workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * file, File:  (required)

     * @return PicturesResponse
     */
    public function PutWorksheetAddPicture($name, $sheetName, $upperLeftRow = null, $upperLeftColumn = null, $lowerRightRow = null, $lowerRightColumn = null, $picturePath = null, $storage = null, $folder = null, $file) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;lowerRightRow={lowerRightRow}&amp;lowerRightColumn={lowerRightColumn}&amp;picturePath={picturePath}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($upperLeftRow != null) {
            $resourcePath = str_replace("{" . "upperLeftRow" . "}", $this->apiClient->toQueryValue($upperLeftRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&upperLeftRow={" . "upperLeftRow" . "}", "", $resourcePath);
        }
        if ($upperLeftColumn != null) {
            $resourcePath = str_replace("{" . "upperLeftColumn" . "}", $this->apiClient->toQueryValue($upperLeftColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&upperLeftColumn={" . "upperLeftColumn" . "}", "", $resourcePath);
        }
        if ($lowerRightRow != null) {
            $resourcePath = str_replace("{" . "lowerRightRow" . "}", $this->apiClient->toQueryValue($lowerRightRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&lowerRightRow={" . "lowerRightRow" . "}", "", $resourcePath);
        }
        if ($lowerRightColumn != null) {
            $resourcePath = str_replace("{" . "lowerRightColumn" . "}", $this->apiClient->toQueryValue($lowerRightColumn), $resourcePath);
        } else {
            $resourcePath = str_replace("&lowerRightColumn={" . "lowerRightColumn" . "}", "", $resourcePath);
        }
        if ($picturePath != null) {
            $resourcePath = str_replace("{" . "picturePath" . "}", $this->apiClient->toQueryValue($picturePath), $resourcePath);
        } else {
            $resourcePath = str_replace("&picturePath={" . "picturePath" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'PicturesResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetPivotTable
     * Delete worksheet pivot table by index
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * pivotTableIndex, int: Pivot table index (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetPivotTable($name, $sheetName, $pivotTableIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $pivotTableIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($pivotTableIndex != null) {
            $resourcePath = str_replace("{" . "pivotTableIndex" . "}", $this->apiClient->toQueryValue($pivotTableIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&pivotTableIndex={" . "pivotTableIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetPivotTables
     * Delete worksheet pivot tables
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetPivotTables($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetPivotTable
     * Get worksheet pivottable info by index.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * pivottableIndex, int:  (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return PivotTableResponse
     */
    public function GetWorksheetPivotTable($name, $sheetName, $pivottableIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $pivottableIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivottableIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($pivottableIndex != null) {
            $resourcePath = str_replace("{" . "pivottableIndex" . "}", $this->apiClient->toQueryValue($pivottableIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&pivottableIndex={" . "pivottableIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'PivotTableResponse');
        return $responseObject;
    }

    /**
     * GetWorksheetPivotTables
     * Get worksheet pivottables info.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return PivotTablesResponse
     */
    public function GetWorksheetPivotTables($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'PivotTablesResponse');
        return $responseObject;
    }

    /**
     * PostPivotTableCellStyle
     * Update cell style for pivot table
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * pivotTableIndex, int: Pivot table index (required)

     * column, int:  (required)

     * row, int:  (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * body, Style: Style dto in request body. (required)

     * @return SaaSposeResponse
     */
    public function PostPivotTableCellStyle($name, $sheetName, $pivotTableIndex, $column, $row, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $pivotTableIndex == '' || $column == '' || $row == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Format/?column={column}&amp;row={row}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($pivotTableIndex != null) {
            $resourcePath = str_replace("{" . "pivotTableIndex" . "}", $this->apiClient->toQueryValue($pivotTableIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&pivotTableIndex={" . "pivotTableIndex" . "}", "", $resourcePath);
        }
        if ($column != null) {
            $resourcePath = str_replace("{" . "column" . "}", $this->apiClient->toQueryValue($column), $resourcePath);
        } else {
            $resourcePath = str_replace("&column={" . "column" . "}", "", $resourcePath);
        }
        if ($row != null) {
            $resourcePath = str_replace("{" . "row" . "}", $this->apiClient->toQueryValue($row), $resourcePath);
        } else {
            $resourcePath = str_replace("&row={" . "row" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostPivotTableStyle
     * Update style for pivot table
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * pivotTableIndex, int: Pivot table index (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * body, Style: Style dto in request body. (required)

     * @return SaaSposeResponse
     */
    public function PostPivotTableStyle($name, $sheetName, $pivotTableIndex, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $pivotTableIndex == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/FormatAll/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($pivotTableIndex != null) {
            $resourcePath = str_replace("{" . "pivotTableIndex" . "}", $this->apiClient->toQueryValue($pivotTableIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&pivotTableIndex={" . "pivotTableIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PutPivotTableField
     * Add pivot field into into pivot table
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * pivotTableIndex, int: Pivot table index (required)

     * pivotFieldType, string:  (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * body, PivotTableFieldRequest: Dto that conrains field indexes (required)

     * @return SaaSposeResponse
     */
    public function PutPivotTableField($name, $sheetName, $pivotTableIndex, $pivotFieldType, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $pivotTableIndex == '' || $pivotFieldType == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/?pivotFieldType={pivotFieldType}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($pivotTableIndex != null) {
            $resourcePath = str_replace("{" . "pivotTableIndex" . "}", $this->apiClient->toQueryValue($pivotTableIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&pivotTableIndex={" . "pivotTableIndex" . "}", "", $resourcePath);
        }
        if ($pivotFieldType != null) {
            $resourcePath = str_replace("{" . "pivotFieldType" . "}", $this->apiClient->toQueryValue($pivotFieldType), $resourcePath);
        } else {
            $resourcePath = str_replace("&pivotFieldType={" . "pivotFieldType" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PutWorksheetPivotTable
     * Add a pivot table into worksheet.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: Workbook storage. (optional)

     * folder, string: Document's folder. (optional)

     * sourceData, string: The data for the new PivotTable cache. (optional)

     * destCellName, string: The cell in the upper-left corner of the PivotTable report's destination range. (optional)

     * tableName, string: The name of the new PivotTable report. (optional)

     * useSameSource, bool: Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory. (optional)

     * body, CreatePivotTableRequest: CreatePivotTableRequest dto in request body. (required)

     * @return PivotTableResponse
     */
    public function PutWorksheetPivotTable($name, $sheetName, $storage = null, $folder = null, $sourceData = null, $destCellName = null, $tableName = null, $useSameSource = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;sourceData={sourceData}&amp;destCellName={destCellName}&amp;tableName={tableName}&amp;useSameSource={useSameSource}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($sourceData != null) {
            $resourcePath = str_replace("{" . "sourceData" . "}", $this->apiClient->toQueryValue($sourceData), $resourcePath);
        } else {
            $resourcePath = str_replace("&sourceData={" . "sourceData" . "}", "", $resourcePath);
        }
        if ($destCellName != null) {
            $resourcePath = str_replace("{" . "destCellName" . "}", $this->apiClient->toQueryValue($destCellName), $resourcePath);
        } else {
            $resourcePath = str_replace("&destCellName={" . "destCellName" . "}", "", $resourcePath);
        }
        if ($tableName != null) {
            $resourcePath = str_replace("{" . "tableName" . "}", $this->apiClient->toQueryValue($tableName), $resourcePath);
        } else {
            $resourcePath = str_replace("&tableName={" . "tableName" . "}", "", $resourcePath);
        }
        if ($useSameSource != null) {
            $resourcePath = str_replace("{" . "useSameSource" . "}", $this->apiClient->toQueryValue($useSameSource), $resourcePath);
        } else {
            $resourcePath = str_replace("&useSameSource={" . "useSameSource" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'PivotTableResponse');
        return $responseObject;
    }

    /**
     * DeleteDocumentProperties
     * Delete all custom document properties and clean built-in ones.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return CellsDocumentPropertiesResponse
     */
    public function DeleteDocumentProperties($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CellsDocumentPropertiesResponse');
        return $responseObject;
    }

    /**
     * DeleteDocumentProperty
     * Delete document property.
     * name, string: The document name. (required)

     * propertyName, string: The property name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return CellsDocumentPropertiesResponse
     */
    public function DeleteDocumentProperty($name, $propertyName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $propertyName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($propertyName != null) {
            $resourcePath = str_replace("{" . "propertyName" . "}", $this->apiClient->toQueryValue($propertyName), $resourcePath);
        } else {
            $resourcePath = str_replace("&propertyName={" . "propertyName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CellsDocumentPropertiesResponse');
        return $responseObject;
    }

    /**
     * GetDocumentProperties
     * Read document properties.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return CellsDocumentPropertiesResponse
     */
    public function GetDocumentProperties($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CellsDocumentPropertiesResponse');
        return $responseObject;
    }

    /**
     * GetDocumentProperty
     * Read document property by name.
     * name, string: The document name. (required)

     * propertyName, string: The property name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return CellsDocumentPropertyResponse
     */
    public function GetDocumentProperty($name, $propertyName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $propertyName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($propertyName != null) {
            $resourcePath = str_replace("{" . "propertyName" . "}", $this->apiClient->toQueryValue($propertyName), $resourcePath);
        } else {
            $resourcePath = str_replace("&propertyName={" . "propertyName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CellsDocumentPropertyResponse');
        return $responseObject;
    }

    /**
     * PutDocumentProperty
     * Set/create document property.
     * name, string: The document name. (required)

     * propertyName, string: The property name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, CellsDocumentProperty: with new property value. (required)

     * @return CellsDocumentPropertyResponse
     */
    public function PutDocumentProperty($name, $propertyName, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $propertyName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($propertyName != null) {
            $resourcePath = str_replace("{" . "propertyName" . "}", $this->apiClient->toQueryValue($propertyName), $resourcePath);
        } else {
            $resourcePath = str_replace("&propertyName={" . "propertyName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CellsDocumentPropertyResponse');
        return $responseObject;
    }

    /**
     * PostDocumentSaveAs
     * Convert document and save result to storage.
     * name, string: The document name. (required)

     * newfilename, string: The new file name. (optional)

     * isAutoFitRows, bool: Autofit rows. (optional)

     * isAutoFitColumns, bool: Autofit columns. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, SaveOptions: Save options. (required)

     * @return SaveResponse
     */
    public function PostDocumentSaveAs($name, $newfilename = null, $isAutoFitRows = null, $isAutoFitColumns = null, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/SaveAs/?appSid={appSid}&amp;newfilename={newfilename}&amp;isAutoFitRows={isAutoFitRows}&amp;isAutoFitColumns={isAutoFitColumns}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($newfilename != null) {
            $resourcePath = str_replace("{" . "newfilename" . "}", $this->apiClient->toQueryValue($newfilename), $resourcePath);
        } else {
            $resourcePath = str_replace("&newfilename={" . "newfilename" . "}", "", $resourcePath);
        }
        if ($isAutoFitRows != null) {
            $resourcePath = str_replace("{" . "isAutoFitRows" . "}", $this->apiClient->toQueryValue($isAutoFitRows), $resourcePath);
        } else {
            $resourcePath = str_replace("&isAutoFitRows={" . "isAutoFitRows" . "}", "", $resourcePath);
        }
        if ($isAutoFitColumns != null) {
            $resourcePath = str_replace("{" . "isAutoFitColumns" . "}", $this->apiClient->toQueryValue($isAutoFitColumns), $resourcePath);
        } else {
            $resourcePath = str_replace("&isAutoFitColumns={" . "isAutoFitColumns" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaveResponse');
        return $responseObject;
    }

    /**
     * DeleteDecryptDocument
     * Decrypt document.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, WorkbookEncryptionRequest: Encryption settings, only password can be specified. (required)

     * @return SaaSposeResponse
     */
    public function DeleteDecryptDocument($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/encryption/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteDocumentUnProtectFromChanges
     * Unprotect document from changes.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteDocumentUnProtectFromChanges($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/writeProtection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteUnProtectDocument
     * Unprotect document.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, WorkbookProtectionRequest: Protection settings, only password can be specified. (required)

     * @return SaaSposeResponse
     */
    public function DeleteUnProtectDocument($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetWorkBook
     * Read workbook info or export.
     * name, string: The document name. (required)

     * password, string: The document password. (optional)

     * isAutoFit, bool: Set document rows to be autofit. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorkBook($name, $password = null, $isAutoFit = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/?appSid={appSid}&amp;password={password}&amp;isAutoFit={isAutoFit}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($password != null) {
            $resourcePath = str_replace("{" . "password" . "}", $this->apiClient->toQueryValue($password), $resourcePath);
        } else {
            $resourcePath = str_replace("&password={" . "password" . "}", "", $resourcePath);
        }
        if ($isAutoFit != null) {
            $resourcePath = str_replace("{" . "isAutoFit" . "}", $this->apiClient->toQueryValue($isAutoFit), $resourcePath);
        } else {
            $resourcePath = str_replace("&isAutoFit={" . "isAutoFit" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetWorkBookDefaultStyle
     * Read workbook default style info.
     * name, string: The workbook name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document's folder. (optional)

     * @return StyleResponse
     */
    public function GetWorkBookDefaultStyle($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/defaultstyle/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'StyleResponse');
        return $responseObject;
    }

    /**
     * GetWorkBookName
     * Read workbook's name.
     * name, string: The workbook name. (required)

     * nameName, string: The name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return NameResponse
     */
    public function GetWorkBookName($name, $nameName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $nameName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/names/{nameName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($nameName != null) {
            $resourcePath = str_replace("{" . "nameName" . "}", $this->apiClient->toQueryValue($nameName), $resourcePath);
        } else {
            $resourcePath = str_replace("&nameName={" . "nameName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'NameResponse');
        return $responseObject;
    }

    /**
     * GetWorkBookNames
     * Read workbook's names.
     * name, string: The workbook name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return NamesResponse
     */
    public function GetWorkBookNames($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/names/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'NamesResponse');
        return $responseObject;
    }

    /**
     * GetWorkBookTextItems
     * Read workbook's text items.
     * name, string: The workbook name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return TextItemsResponse
     */
    public function GetWorkBookTextItems($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/textItems/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextItemsResponse');
        return $responseObject;
    }

    /**
     * GetWorkBookWithFormat
     * EExport workbook to some format.
     * name, string: The document name. (required)

     * format, string: The conversion format. (required)

     * password, string: The document password. (optional)

     * isAutoFit, bool: Set document rows to be autofit. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * outPath, string: Path to save result (optional)

     * @return ResponseMessage
     */
    public function GetWorkBookWithFormat($name, $format, $password = null, $isAutoFit = null, $storage = null, $folder = null, $outPath = null) {
        // verify required params are set
        if ($name == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/?appSid={appSid}&amp;toFormat={toFormat}&amp;password={password}&amp;isAutoFit={isAutoFit}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($password != null) {
            $resourcePath = str_replace("{" . "password" . "}", $this->apiClient->toQueryValue($password), $resourcePath);
        } else {
            $resourcePath = str_replace("&password={" . "password" . "}", "", $resourcePath);
        }
        if ($isAutoFit != null) {
            $resourcePath = str_replace("{" . "isAutoFit" . "}", $this->apiClient->toQueryValue($isAutoFit), $resourcePath);
        } else {
            $resourcePath = str_replace("&isAutoFit={" . "isAutoFit" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostAutofitWorkbookRows
     * Autofit workbook rows.
     * name, string: Document name. (required)

     * startRow, int: Start row. (optional)

     * endRow, int: End row. (optional)

     * onlyAuto, bool: Only auto. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * body, AutoFitterOptions: Auto Fitter Options. (required)

     * @return SaaSposeResponse
     */
    public function PostAutofitWorkbookRows($name, $startRow = null, $endRow = null, $onlyAuto = null, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/autofitrows/?appSid={appSid}&amp;startRow={startRow}&amp;endRow={endRow}&amp;onlyAuto={onlyAuto}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($startRow != null) {
            $resourcePath = str_replace("{" . "startRow" . "}", $this->apiClient->toQueryValue($startRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&startRow={" . "startRow" . "}", "", $resourcePath);
        }
        if ($endRow != null) {
            $resourcePath = str_replace("{" . "endRow" . "}", $this->apiClient->toQueryValue($endRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&endRow={" . "endRow" . "}", "", $resourcePath);
        }
        if ($onlyAuto != null) {
            $resourcePath = str_replace("{" . "onlyAuto" . "}", $this->apiClient->toQueryValue($onlyAuto), $resourcePath);
        } else {
            $resourcePath = str_replace("&onlyAuto={" . "onlyAuto" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostEncryptDocument
     * Encript document.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, WorkbookEncryptionRequest: Encryption parameters. (required)

     * @return SaaSposeResponse
     */
    public function PostEncryptDocument($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/encryption/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostImportData
     * Import data to workbook.
     * name, string: The workbook name. (required)

     * storage, string: The workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * body, ImportOption: The import option. (required)

     * @return SaaSposeResponse
     */
    public function PostImportData($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/importdata/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostProtectDocument
     * Protect document.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, WorkbookProtectionRequest: The protection settings. (required)

     * @return SaaSposeResponse
     */
    public function PostProtectDocument($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostWorkbookCalculateFormula
     * Calculate all formulas in workbook.
     * name, string: Document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostWorkbookCalculateFormula($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/calculateformula/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostWorkbookGetSmartMarkerResult
     * Smart marker processing result.
     * name, string: The workbook name. (required)

     * xmlFile, string: The xml file full path, if empty the data is read from request body. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The workbook folder full path. (optional)

     * outPath, string: Path to save result (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PostWorkbookGetSmartMarkerResult($name, $xmlFile = null, $storage = null, $folder = null, $outPath = null, $file) {
        // verify required params are set
        if ($name == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/smartmarker/?appSid={appSid}&amp;xmlFile={xmlFile}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($xmlFile != null) {
            $resourcePath = str_replace("{" . "xmlFile" . "}", $this->apiClient->toQueryValue($xmlFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&xmlFile={" . "xmlFile" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostWorkbooksMerge
     * Merge workbooks.
     * name, string: Workbook name. (required)

     * mergeWith, string: The workbook to merge with. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Source workbook folder. (optional)

     * @return WorkbookResponse
     */
    public function PostWorkbooksMerge($name, $mergeWith, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $mergeWith == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/merge/?mergeWith={mergeWith}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($mergeWith != null) {
            $resourcePath = str_replace("{" . "mergeWith" . "}", $this->apiClient->toQueryValue($mergeWith), $resourcePath);
        } else {
            $resourcePath = str_replace("&mergeWith={" . "mergeWith" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorkbookResponse');
        return $responseObject;
    }

    /**
     * PostWorkbookSplit
     * Split workbook.
     * name, string: The workbook name. (required)

     * format, string: Split format. (optional)

     * from, int: Start worksheet index. (optional)

     * to, int: End worksheet index. (optional)

     * horizontalResolution, int: Image horizontal resolution. (optional)

     * verticalResolution, int: Image vertical resolution. (optional)

     * storage, string: The workbook storage. (optional)

     * folder, string: The workbook folder. (optional)

     * @return SplitResultResponse
     */
    public function PostWorkbookSplit($name, $format = null, $from = null, $to = null, $horizontalResolution = null, $verticalResolution = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/split/?appSid={appSid}&amp;toFormat={toFormat}&amp;from={from}&amp;to={to}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($from != null) {
            $resourcePath = str_replace("{" . "from" . "}", $this->apiClient->toQueryValue($from), $resourcePath);
        } else {
            $resourcePath = str_replace("&from={" . "from" . "}", "", $resourcePath);
        }
        if ($to != null) {
            $resourcePath = str_replace("{" . "to" . "}", $this->apiClient->toQueryValue($to), $resourcePath);
        } else {
            $resourcePath = str_replace("&to={" . "to" . "}", "", $resourcePath);
        }
        if ($horizontalResolution != null) {
            $resourcePath = str_replace("{" . "horizontalResolution" . "}", $this->apiClient->toQueryValue($horizontalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&horizontalResolution={" . "horizontalResolution" . "}", "", $resourcePath);
        }
        if ($verticalResolution != null) {
            $resourcePath = str_replace("{" . "verticalResolution" . "}", $this->apiClient->toQueryValue($verticalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&verticalResolution={" . "verticalResolution" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SplitResultResponse');
        return $responseObject;
    }

    /**
     * PostWorkbooksTextReplace
     * Replace text.
     * name, string: Document name. (required)

     * oldValue, string: The old value. (required)

     * newValue, string: The new value. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return WorkbookReplaceResponse
     */
    public function PostWorkbooksTextReplace($name, $oldValue, $newValue, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $oldValue == '' || $newValue == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/replaceText/?oldValue={oldValue}&amp;newValue={newValue}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($oldValue != null) {
            $resourcePath = str_replace("{" . "oldValue" . "}", $this->apiClient->toQueryValue($oldValue), $resourcePath);
        } else {
            $resourcePath = str_replace("&oldValue={" . "oldValue" . "}", "", $resourcePath);
        }
        if ($newValue != null) {
            $resourcePath = str_replace("{" . "newValue" . "}", $this->apiClient->toQueryValue($newValue), $resourcePath);
        } else {
            $resourcePath = str_replace("&newValue={" . "newValue" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorkbookReplaceResponse');
        return $responseObject;
    }

    /**
     * PostWorkbooksTextSearch
     * Search text.
     * name, string: Document name. (required)

     * text, string: Text sample. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return TextItemsResponse
     */
    public function PostWorkbooksTextSearch($name, $text, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $text == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/findText/?text={text}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($text != null) {
            $resourcePath = str_replace("{" . "text" . "}", $this->apiClient->toQueryValue($text), $resourcePath);
        } else {
            $resourcePath = str_replace("&text={" . "text" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextItemsResponse');
        return $responseObject;
    }

    /**
     * PutConvertWorkBook
     * Convert workbook from request content to some format.
     * format, string: The format to convert. (optional)

     * password, string: The workbook password. (optional)

     * outPath, string: Path to save result (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PutConvertWorkBook($format = null, $password = null, $outPath = null, $file) {
        // verify required params are set
        if ($file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/convert/?appSid={appSid}&amp;toFormat={toFormat}&amp;password={password}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($password != null) {
            $resourcePath = str_replace("{" . "password" . "}", $this->apiClient->toQueryValue($password), $resourcePath);
        } else {
            $resourcePath = str_replace("&password={" . "password" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PutDocumentProtectFromChanges
     * Protect document from changes.
     * name, string: Document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * body, PasswordRequest: Modification password. (required)

     * @return SaaSposeResponse
     */
    public function PutDocumentProtectFromChanges($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/writeProtection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PutWorkbookCreate
     * Create new workbook using deferent methods.
     * name, string: The new document name. (required)

     * templateFile, string: The template file, if the data not provided default workbook is created. (optional)

     * dataFile, string: Smart marker data file, if the data not provided the request content is checked for the data. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The new document folder. (optional)

     * file, File:  (required)

     * @return WorkbookResponse
     */
    public function PutWorkbookCreate($name, $templateFile = null, $dataFile = null, $storage = null, $folder = null, $file) {
        // verify required params are set
        if ($name == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/?appSid={appSid}&amp;templateFile={templateFile}&amp;dataFile={dataFile}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($templateFile != null) {
            $resourcePath = str_replace("{" . "templateFile" . "}", $this->apiClient->toQueryValue($templateFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&templateFile={" . "templateFile" . "}", "", $resourcePath);
        }
        if ($dataFile != null) {
            $resourcePath = str_replace("{" . "dataFile" . "}", $this->apiClient->toQueryValue($dataFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&dataFile={" . "dataFile" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorkbookResponse');
        return $responseObject;
    }

    /**
     * DeleteUnprotectWorksheet
     * Unprotect worksheet.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document folder. (optional)

     * body, ProtectSheetParameter: with protection settings. Only password is used here. (required)

     * @return WorksheetResponse
     */
    public function DeleteUnprotectWorksheet($name, $sheetName, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorksheetResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheet
     * Delete worksheet.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return WorksheetsResponse
     */
    public function DeleteWorksheet($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorksheetsResponse');
        return $responseObject;
    }

    /**
     * DeleteWorkSheetBackground
     * Set worksheet background image.
     * name, string:  (required)

     * sheetName, string:  (required)

     * folder, string:  (optional)

     * storage, string:  (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorkSheetBackground($name, $sheetName, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/background/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorkSheetComment
     * Delete worksheet's cell comment.
     * name, string: The document name. (required)

     * sheetName, string: The worksheet name. (required)

     * cellName, string: The cell name (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorkSheetComment($name, $sheetName, $cellName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellName != null) {
            $resourcePath = str_replace("{" . "cellName" . "}", $this->apiClient->toQueryValue($cellName), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellName={" . "cellName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorksheetFreezePanes
     * Unfreeze panes
     * name, string:  (required)

     * sheetName, string:  (required)

     * row, int:  (required)

     * column, int:  (required)

     * freezedRows, int:  (required)

     * freezedColumns, int:  (required)

     * folder, string:  (optional)

     * storage, string:  (optional)

     * @return SaaSposeResponse
     */
    public function DeleteWorksheetFreezePanes($name, $sheetName, $row, $column, $freezedRows, $freezedColumns, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $row == '' || $column == '' || $freezedRows == '' || $freezedColumns == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/freezepanes/?appSid={appSid}&amp;row={row}&amp;column={column}&amp;freezedRows={freezedRows}&amp;freezedColumns={freezedColumns}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($row != null) {
            $resourcePath = str_replace("{" . "row" . "}", $this->apiClient->toQueryValue($row), $resourcePath);
        } else {
            $resourcePath = str_replace("&row={" . "row" . "}", "", $resourcePath);
        }
        if ($column != null) {
            $resourcePath = str_replace("{" . "column" . "}", $this->apiClient->toQueryValue($column), $resourcePath);
        } else {
            $resourcePath = str_replace("&column={" . "column" . "}", "", $resourcePath);
        }
        if ($freezedRows != null) {
            $resourcePath = str_replace("{" . "freezedRows" . "}", $this->apiClient->toQueryValue($freezedRows), $resourcePath);
        } else {
            $resourcePath = str_replace("&freezedRows={" . "freezedRows" . "}", "", $resourcePath);
        }
        if ($freezedColumns != null) {
            $resourcePath = str_replace("{" . "freezedColumns" . "}", $this->apiClient->toQueryValue($freezedColumns), $resourcePath);
        } else {
            $resourcePath = str_replace("&freezedColumns={" . "freezedColumns" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheet
     * Read worksheet info or export.
     * name, string: The document name. (required)

     * sheetName, string: The worksheet name. (required)

     * verticalResolution, int: Image vertical resolution. (optional)

     * horizontalResolution, int: Image horizontal resolution. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorkSheet($name, $sheetName, $verticalResolution = null, $horizontalResolution = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;verticalResolution={verticalResolution}&amp;horizontalResolution={horizontalResolution}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($verticalResolution != null) {
            $resourcePath = str_replace("{" . "verticalResolution" . "}", $this->apiClient->toQueryValue($verticalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&verticalResolution={" . "verticalResolution" . "}", "", $resourcePath);
        }
        if ($horizontalResolution != null) {
            $resourcePath = str_replace("{" . "horizontalResolution" . "}", $this->apiClient->toQueryValue($horizontalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&horizontalResolution={" . "horizontalResolution" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetWorkSheetCalculateFormula
     * Calculate formula value.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * formula, string: The formula. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return SingleValueResponse
     */
    public function GetWorkSheetCalculateFormula($name, $sheetName, $formula, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $formula == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/formulaResult/?formula={formula}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($formula != null) {
            $resourcePath = str_replace("{" . "formula" . "}", $this->apiClient->toQueryValue($formula), $resourcePath);
        } else {
            $resourcePath = str_replace("&formula={" . "formula" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SingleValueResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheetComment
     * Get worksheet comment by cell name.
     * name, string: The document name. (required)

     * sheetName, string: The worksheet name. (required)

     * cellName, string: The cell name (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return CommentResponse
     */
    public function GetWorkSheetComment($name, $sheetName, $cellName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellName != null) {
            $resourcePath = str_replace("{" . "cellName" . "}", $this->apiClient->toQueryValue($cellName), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellName={" . "cellName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CommentResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheetComments
     * Get worksheet comments.
     * name, string: Workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return CommentsResponse
     */
    public function GetWorkSheetComments($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/comments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CommentsResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheetMergedCell
     * Get worksheet merged cell by its index.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * mergedCellIndex, int: Merged cell index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document folder. (optional)

     * @return MergedCellResponse
     */
    public function GetWorkSheetMergedCell($name, $sheetName, $mergedCellIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $mergedCellIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/mergedCells/{mergedCellIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($mergedCellIndex != null) {
            $resourcePath = str_replace("{" . "mergedCellIndex" . "}", $this->apiClient->toQueryValue($mergedCellIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&mergedCellIndex={" . "mergedCellIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'MergedCellResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheetMergedCells
     * Get worksheet merged cells.
     * name, string: Document name. (required)

     * sheetName, string: The workseet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document folder. (optional)

     * @return MergedCellsResponse
     */
    public function GetWorkSheetMergedCells($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/mergedCells/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'MergedCellsResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheets
     * Read worksheets info.
     * name, string: Document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document folder. (optional)

     * @return WorksheetsResponse
     */
    public function GetWorkSheets($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorksheetsResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheetTextItems
     * Get worksheet text items.
     * name, string: Workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The workbook's folder. (optional)

     * @return TextItemsResponse
     */
    public function GetWorkSheetTextItems($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/textItems/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextItemsResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheetWithFormat
     * Read worksheet info or export.
     * name, string: The document name. (required)

     * sheetName, string: The worksheet name. (required)

     * format, string: Export format. (required)

     * verticalResolution, int: Image vertical resolution. (optional)

     * horizontalResolution, int: Image horizontal resolution. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetWorkSheetWithFormat($name, $sheetName, $format, $verticalResolution = null, $horizontalResolution = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;toFormat={toFormat}&amp;verticalResolution={verticalResolution}&amp;horizontalResolution={horizontalResolution}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($verticalResolution != null) {
            $resourcePath = str_replace("{" . "verticalResolution" . "}", $this->apiClient->toQueryValue($verticalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&verticalResolution={" . "verticalResolution" . "}", "", $resourcePath);
        }
        if ($horizontalResolution != null) {
            $resourcePath = str_replace("{" . "horizontalResolution" . "}", $this->apiClient->toQueryValue($horizontalResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&horizontalResolution={" . "horizontalResolution" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostAutofitWorksheetRows
     * Autofit worksheet rows.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * startRow, int: Start row. (optional)

     * endRow, int: End row. (optional)

     * onlyAuto, bool: Only auto. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * body, AutoFitterOptions: Auto Fitter Options. (required)

     * @return SaaSposeResponse
     */
    public function PostAutofitWorksheetRows($name, $sheetName, $startRow = null, $endRow = null, $onlyAuto = null, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/autofitrows/?appSid={appSid}&amp;startRow={startRow}&amp;endRow={endRow}&amp;onlyAuto={onlyAuto}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($startRow != null) {
            $resourcePath = str_replace("{" . "startRow" . "}", $this->apiClient->toQueryValue($startRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&startRow={" . "startRow" . "}", "", $resourcePath);
        }
        if ($endRow != null) {
            $resourcePath = str_replace("{" . "endRow" . "}", $this->apiClient->toQueryValue($endRow), $resourcePath);
        } else {
            $resourcePath = str_replace("&endRow={" . "endRow" . "}", "", $resourcePath);
        }
        if ($onlyAuto != null) {
            $resourcePath = str_replace("{" . "onlyAuto" . "}", $this->apiClient->toQueryValue($onlyAuto), $resourcePath);
        } else {
            $resourcePath = str_replace("&onlyAuto={" . "onlyAuto" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostCopyWorksheet
     * Copy worksheet
     * name, string:  (required)

     * sheetName, string:  (required)

     * sourceSheet, string:  (required)

     * folder, string:  (optional)

     * storage, string:  (optional)

     * @return SaaSposeResponse
     */
    public function PostCopyWorksheet($name, $sheetName, $sourceSheet, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $sourceSheet == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/copy/?sourceSheet={sourceSheet}&amp;appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($sourceSheet != null) {
            $resourcePath = str_replace("{" . "sourceSheet" . "}", $this->apiClient->toQueryValue($sourceSheet), $resourcePath);
        } else {
            $resourcePath = str_replace("&sourceSheet={" . "sourceSheet" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostMoveWorksheet
     * Move worksheet.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, WorksheetMovingRequest: with moving parameters. (required)

     * @return WorksheetsResponse
     */
    public function PostMoveWorksheet($name, $sheetName, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/position/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorksheetsResponse');
        return $responseObject;
    }

    /**
     * PostRenameWorksheet
     * Rename worksheet
     * name, string:  (required)

     * sheetName, string:  (required)

     * newname, string:  (required)

     * folder, string:  (optional)

     * storage, string:  (optional)

     * @return SaaSposeResponse
     */
    public function PostRenameWorksheet($name, $sheetName, $newname, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $newname == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/rename/?newname={newname}&amp;appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($newname != null) {
            $resourcePath = str_replace("{" . "newname" . "}", $this->apiClient->toQueryValue($newname), $resourcePath);
        } else {
            $resourcePath = str_replace("&newname={" . "newname" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostUpdateWorksheetProperty
     * Update worksheet property
     * name, string:  (required)

     * sheetName, string:  (required)

     * folder, string:  (optional)

     * storage, string:  (optional)

     * body, Worksheet:  (required)

     * @return WorksheetResponse
     */
    public function PostUpdateWorksheetProperty($name, $sheetName, $folder = null, $storage = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorksheetResponse');
        return $responseObject;
    }

    /**
     * PostWorkSheetComment
     * Update worksheet's cell comment.
     * name, string: The document name. (required)

     * sheetName, string: The worksheet name. (required)

     * cellName, string: The cell name (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Comment: Comment object (required)

     * @return SaaSposeResponse
     */
    public function PostWorkSheetComment($name, $sheetName, $cellName, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellName != null) {
            $resourcePath = str_replace("{" . "cellName" . "}", $this->apiClient->toQueryValue($cellName), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellName={" . "cellName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostWorksheetRangeSort
     * Sort worksheet range.
     * name, string: The workbook name. (required)

     * sheetName, string: The worksheet name. (required)

     * cellArea, string: The range to sort. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The workbook folder. (optional)

     * body, DataSorter: with sorting settings. (required)

     * @return SaaSposeResponse
     */
    public function PostWorksheetRangeSort($name, $sheetName, $cellArea, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellArea == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/sort/?cellArea={cellArea}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellArea != null) {
            $resourcePath = str_replace("{" . "cellArea" . "}", $this->apiClient->toQueryValue($cellArea), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellArea={" . "cellArea" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostWorkSheetTextSearch
     * Search text.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * text, string: Text to search. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return TextItemsResponse
     */
    public function PostWorkSheetTextSearch($name, $sheetName, $text, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $text == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/findText/?text={text}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($text != null) {
            $resourcePath = str_replace("{" . "text" . "}", $this->apiClient->toQueryValue($text), $resourcePath);
        } else {
            $resourcePath = str_replace("&text={" . "text" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextItemsResponse');
        return $responseObject;
    }

    /**
     * PostWorsheetTextReplace
     * Replace text.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * oldValue, string: The old text to replace. (required)

     * newValue, string: The new text to replace by. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return WorksheetReplaceResponse
     */
    public function PostWorsheetTextReplace($name, $sheetName, $oldValue, $newValue, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $oldValue == '' || $newValue == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/replaceText/?oldValue={oldValue}&amp;newValue={newValue}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($oldValue != null) {
            $resourcePath = str_replace("{" . "oldValue" . "}", $this->apiClient->toQueryValue($oldValue), $resourcePath);
        } else {
            $resourcePath = str_replace("&oldValue={" . "oldValue" . "}", "", $resourcePath);
        }
        if ($newValue != null) {
            $resourcePath = str_replace("{" . "newValue" . "}", $this->apiClient->toQueryValue($newValue), $resourcePath);
        } else {
            $resourcePath = str_replace("&newValue={" . "newValue" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorksheetReplaceResponse');
        return $responseObject;
    }

    /**
     * PutAddNewWorksheet
     * Add new worksheet.
     * name, string: Document name. (required)

     * sheetName, string: The new sheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document folder. (optional)

     * @return WorksheetsResponse
     */
    public function PutAddNewWorksheet($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorksheetsResponse');
        return $responseObject;
    }

    /**
     * PutChangeVisibilityWorksheet
     * Change worksheet visibility.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * isVisible, bool: New worksheet visibility value. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return WorksheetResponse
     */
    public function PutChangeVisibilityWorksheet($name, $sheetName, $isVisible, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $isVisible == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/visible/?isVisible={isVisible}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($isVisible != null) {
            $resourcePath = str_replace("{" . "isVisible" . "}", $this->apiClient->toQueryValue($isVisible), $resourcePath);
        } else {
            $resourcePath = str_replace("&isVisible={" . "isVisible" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorksheetResponse');
        return $responseObject;
    }

    /**
     * PutProtectWorksheet
     * Protect worksheet.
     * name, string: Document name. (required)

     * sheetName, string: The worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document folder. (optional)

     * body, ProtectSheetParameter: with protection settings. (required)

     * @return WorksheetResponse
     */
    public function PutProtectWorksheet($name, $sheetName, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WorksheetResponse');
        return $responseObject;
    }

    /**
     * PutWorkSheetBackground
     * Set worksheet background image.
     * name, string:  (required)

     * sheetName, string:  (required)

     * folder, string:  (optional)

     * storage, string:  (optional)

     * file, File:  (required)

     * @return SaaSposeResponse
     */
    public function PutWorkSheetBackground($name, $sheetName, $folder = null, $storage = null, $file) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/background/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PutWorkSheetComment
     * Add worksheet's cell comment.
     * name, string: The document name. (required)

     * sheetName, string: The worksheet name. (required)

     * cellName, string: The cell name (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Comment: Comment object (required)

     * @return CommentResponse
     */
    public function PutWorkSheetComment($name, $sheetName, $cellName, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $cellName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($cellName != null) {
            $resourcePath = str_replace("{" . "cellName" . "}", $this->apiClient->toQueryValue($cellName), $resourcePath);
        } else {
            $resourcePath = str_replace("&cellName={" . "cellName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CommentResponse');
        return $responseObject;
    }

    /**
     * PutWorksheetFreezePanes
     * Set freeze panes
     * name, string:  (required)

     * sheetName, string:  (required)

     * row, int:  (required)

     * column, int:  (required)

     * freezedRows, int:  (required)

     * freezedColumns, int:  (required)

     * folder, string:  (optional)

     * storage, string:  (optional)

     * @return SaaSposeResponse
     */
    public function PutWorksheetFreezePanes($name, $sheetName, $row, $column, $freezedRows, $freezedColumns, $folder = null, $storage = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $row == '' || $column == '' || $freezedRows == '' || $freezedColumns == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/freezepanes/?appSid={appSid}&amp;row={row}&amp;column={column}&amp;freezedRows={freezedRows}&amp;freezedColumns={freezedColumns}&amp;folder={folder}&amp;storage={storage}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($row != null) {
            $resourcePath = str_replace("{" . "row" . "}", $this->apiClient->toQueryValue($row), $resourcePath);
        } else {
            $resourcePath = str_replace("&row={" . "row" . "}", "", $resourcePath);
        }
        if ($column != null) {
            $resourcePath = str_replace("{" . "column" . "}", $this->apiClient->toQueryValue($column), $resourcePath);
        } else {
            $resourcePath = str_replace("&column={" . "column" . "}", "", $resourcePath);
        }
        if ($freezedRows != null) {
            $resourcePath = str_replace("{" . "freezedRows" . "}", $this->apiClient->toQueryValue($freezedRows), $resourcePath);
        } else {
            $resourcePath = str_replace("&freezedRows={" . "freezedRows" . "}", "", $resourcePath);
        }
        if ($freezedColumns != null) {
            $resourcePath = str_replace("{" . "freezedColumns" . "}", $this->apiClient->toQueryValue($freezedColumns), $resourcePath);
        } else {
            $resourcePath = str_replace("&freezedColumns={" . "freezedColumns" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteWorkSheetValidation
     * Delete worksheet validation by index.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * validationIndex, int: The validation index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return ValidationResponse
     */
    public function DeleteWorkSheetValidation($name, $sheetName, $validationIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $validationIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($validationIndex != null) {
            $resourcePath = str_replace("{" . "validationIndex" . "}", $this->apiClient->toQueryValue($validationIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&validationIndex={" . "validationIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ValidationResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheetValidation
     * Get worksheet validation by index.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * validationIndex, int: The validation index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * @return ValidationResponse
     */
    public function GetWorkSheetValidation($name, $sheetName, $validationIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $validationIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($validationIndex != null) {
            $resourcePath = str_replace("{" . "validationIndex" . "}", $this->apiClient->toQueryValue($validationIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&validationIndex={" . "validationIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ValidationResponse');
        return $responseObject;
    }

    /**
     * GetWorkSheetValidations
     * Get worksheet validations.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document folder. (optional)

     * @return ValidationsResponse
     */
    public function GetWorkSheetValidations($name, $sheetName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $sheetName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/validations/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ValidationsResponse');
        return $responseObject;
    }

    /**
     * PostWorkSheetValidation
     * Update worksheet validation by index.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * validationIndex, int: The validation index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * file, File:  (required)

     * @return ValidationResponse
     */
    public function PostWorkSheetValidation($name, $sheetName, $validationIndex, $storage = null, $folder = null, $file) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $validationIndex == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($validationIndex != null) {
            $resourcePath = str_replace("{" . "validationIndex" . "}", $this->apiClient->toQueryValue($validationIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&validationIndex={" . "validationIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ValidationResponse');
        return $responseObject;
    }

    /**
     * PutWorkSheetValidation
     * Add worksheet validation at index.
     * name, string: Document name. (required)

     * sheetName, string: Worksheet name. (required)

     * range, string: Specified cells area (optional)

     * storage, string: The document storage. (optional)

     * folder, string: Document's folder. (optional)

     * file, File:  (required)

     * @return ValidationResponse
     */
    public function PutWorkSheetValidation($name, $sheetName, $range = null, $storage = null, $folder = null, $file) {
        // verify required params are set
        if ($name == '' || $sheetName == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/cells/{name}/worksheets/{sheetName}/validations/?appSid={appSid}&amp;range={range}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($sheetName != null) {
            $resourcePath = str_replace("{" . "sheetName" . "}", $this->apiClient->toQueryValue($sheetName), $resourcePath);
        } else {
            $resourcePath = str_replace("&sheetName={" . "sheetName" . "}", "", $resourcePath);
        }
        if ($range != null) {
            $resourcePath = str_replace("{" . "range" . "}", $this->apiClient->toQueryValue($range), $resourcePath);
        } else {
            $resourcePath = str_replace("&range={" . "range" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ValidationResponse');
        return $responseObject;
    }

}
