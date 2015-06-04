package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.PivotField;
import com.aspose.cells.model.Link;
import com.aspose.cells.model.CellArea;
public class PivotTable {
  private String AltTextDescription = null;
  private String AltTextTitle = null;
  private String AutoFormatType = null;
  private List<PivotField> BaseFields = new ArrayList<PivotField>();
  private List<PivotField> ColumnFields = new ArrayList<PivotField>();
  private Boolean ColumnGrand = null;
  private String ColumnHeaderCaption = null;
  private CellArea ColumnRange = null;
  private Boolean CustomListSort = null;
  private CellArea DataBodyRange = null;
  private PivotField DataField = null;
  private List<PivotField> DataFields = new ArrayList<PivotField>();
  private List<String> DataSource = new ArrayList<String>();
  private Boolean DisplayErrorString = null;
  private Boolean DisplayImmediateItems = null;
  private Boolean DisplayNullString = null;
  private Boolean EnableDataValueEditing = null;
  private Boolean EnableDrilldown = null;
  private Boolean EnableFieldDialog = null;
  private Boolean EnableFieldList = null;
  private Boolean EnableWizard = null;
  private String ErrorString = null;
  private Boolean FieldListSortAscending = null;
  private String GrandTotalName = null;
  private Boolean HasBlankRows = null;
  private Integer Indent = null;
  private Boolean IsAutoFormat = null;
  private Boolean IsGridDropZones = null;
  private Boolean IsMultipleFieldFilters = null;
  private Boolean IsSelected = null;
  private Boolean ItemPrintTitles = null;
  private Boolean ManualUpdate = null;
  private Boolean MergeLabels = null;
  private String MissingItemsLimit = null;
  private String Name = null;
  private String NullString = null;
  private String PageFieldOrder = null;
  private List<PivotField> PageFields = new ArrayList<PivotField>();
  private Integer PageFieldWrapCount = null;
  private List<PivotFilter> PivotFilters = new ArrayList<PivotFilter>();
  private String PivotTableStyleName = null;
  private String PivotTableStyleType = null;
  private Boolean PreserveFormatting = null;
  private Boolean PrintDrill = null;
  private Boolean PrintTitles = null;
  private Boolean RefreshDataFlag = null;
  private Boolean RefreshDataOnOpeningFile = null;
  private List<PivotField> RowFields = new ArrayList<PivotField>();
  private Boolean RowGrand = null;
  private String RowHeaderCaption = null;
  private CellArea RowRange = null;
  private Boolean SaveData = null;
  private Boolean ShowDataTips = null;
  private Boolean ShowDrill = null;
  private Boolean ShowEmptyCol = null;
  private Boolean ShowEmptyRow = null;
  private Boolean ShowMemberPropertyTips = null;
  private Boolean ShowPivotStyleColumnHeader = null;
  private Boolean ShowPivotStyleColumnStripes = null;
  private Boolean ShowPivotStyleLastColumn = null;
  private Boolean ShowPivotStyleRowHeader = null;
  private Boolean ShowPivotStyleRowStripes = null;
  private Boolean ShowRowHeaderCaption = null;
  private Boolean ShowValuesRow = null;
  private Boolean SubtotalHiddenPageItems = null;
  private CellArea TableRange1 = null;
  private CellArea TableRange2 = null;
  private String Tag = null;
  private Link link = null;
  /**
	 * getAltTextDescription
	 * Gets String
	 * @return AltTextDescription
	 */
  public String getAltTextDescription() {
    return AltTextDescription;
  }

	/**
	 * setAltTextDescription
	 * Sets String
	 * @param AltTextDescription String
	 */
  public void setAltTextDescription(String AltTextDescription) {
    this.AltTextDescription = AltTextDescription;
  }

  /**
	 * getAltTextTitle
	 * Gets String
	 * @return AltTextTitle
	 */
  public String getAltTextTitle() {
    return AltTextTitle;
  }

	/**
	 * setAltTextTitle
	 * Sets String
	 * @param AltTextTitle String
	 */
  public void setAltTextTitle(String AltTextTitle) {
    this.AltTextTitle = AltTextTitle;
  }

  /**
	 * getAutoFormatType
	 * Gets String
	 * @return AutoFormatType
	 */
  public String getAutoFormatType() {
    return AutoFormatType;
  }

	/**
	 * setAutoFormatType
	 * Sets String
	 * @param AutoFormatType String
	 */
  public void setAutoFormatType(String AutoFormatType) {
    this.AutoFormatType = AutoFormatType;
  }

  /**
	 * getBaseFields
	 * Gets List<PivotField>
	 * @return BaseFields
	 */
  public List<PivotField> getBaseFields() {
    return BaseFields;
  }

	/**
	 * setBaseFields
	 * Sets List<PivotField>
	 * @param BaseFields List<PivotField>
	 */
  public void setBaseFields(List<PivotField> BaseFields) {
    this.BaseFields = BaseFields;
  }

  /**
	 * getColumnFields
	 * Gets List<PivotField>
	 * @return ColumnFields
	 */
  public List<PivotField> getColumnFields() {
    return ColumnFields;
  }

	/**
	 * setColumnFields
	 * Sets List<PivotField>
	 * @param ColumnFields List<PivotField>
	 */
  public void setColumnFields(List<PivotField> ColumnFields) {
    this.ColumnFields = ColumnFields;
  }

  /**
	 * getColumnGrand
	 * Gets Boolean
	 * @return ColumnGrand
	 */
  public Boolean getColumnGrand() {
    return ColumnGrand;
  }

	/**
	 * setColumnGrand
	 * Sets Boolean
	 * @param ColumnGrand Boolean
	 */
  public void setColumnGrand(Boolean ColumnGrand) {
    this.ColumnGrand = ColumnGrand;
  }

  /**
	 * getColumnHeaderCaption
	 * Gets String
	 * @return ColumnHeaderCaption
	 */
  public String getColumnHeaderCaption() {
    return ColumnHeaderCaption;
  }

	/**
	 * setColumnHeaderCaption
	 * Sets String
	 * @param ColumnHeaderCaption String
	 */
  public void setColumnHeaderCaption(String ColumnHeaderCaption) {
    this.ColumnHeaderCaption = ColumnHeaderCaption;
  }

  /**
	 * getColumnRange
	 * Gets CellArea
	 * @return ColumnRange
	 */
  public CellArea getColumnRange() {
    return ColumnRange;
  }

	/**
	 * setColumnRange
	 * Sets CellArea
	 * @param ColumnRange CellArea
	 */
  public void setColumnRange(CellArea ColumnRange) {
    this.ColumnRange = ColumnRange;
  }

  /**
	 * getCustomListSort
	 * Gets Boolean
	 * @return CustomListSort
	 */
  public Boolean getCustomListSort() {
    return CustomListSort;
  }

	/**
	 * setCustomListSort
	 * Sets Boolean
	 * @param CustomListSort Boolean
	 */
  public void setCustomListSort(Boolean CustomListSort) {
    this.CustomListSort = CustomListSort;
  }

  /**
	 * getDataBodyRange
	 * Gets CellArea
	 * @return DataBodyRange
	 */
  public CellArea getDataBodyRange() {
    return DataBodyRange;
  }

	/**
	 * setDataBodyRange
	 * Sets CellArea
	 * @param DataBodyRange CellArea
	 */
  public void setDataBodyRange(CellArea DataBodyRange) {
    this.DataBodyRange = DataBodyRange;
  }

  /**
	 * getDataField
	 * Gets PivotField
	 * @return DataField
	 */
  public PivotField getDataField() {
    return DataField;
  }

	/**
	 * setDataField
	 * Sets PivotField
	 * @param DataField PivotField
	 */
  public void setDataField(PivotField DataField) {
    this.DataField = DataField;
  }

  /**
	 * getDataFields
	 * Gets List<PivotField>
	 * @return DataFields
	 */
  public List<PivotField> getDataFields() {
    return DataFields;
  }

	/**
	 * setDataFields
	 * Sets List<PivotField>
	 * @param DataFields List<PivotField>
	 */
  public void setDataFields(List<PivotField> DataFields) {
    this.DataFields = DataFields;
  }

  /**
	 * getDataSource
	 * Gets List<String>
	 * @return DataSource
	 */
  public List<String> getDataSource() {
    return DataSource;
  }

	/**
	 * setDataSource
	 * Sets List<String>
	 * @param DataSource List<String>
	 */
  public void setDataSource(List<String> DataSource) {
    this.DataSource = DataSource;
  }

  /**
	 * getDisplayErrorString
	 * Gets Boolean
	 * @return DisplayErrorString
	 */
  public Boolean getDisplayErrorString() {
    return DisplayErrorString;
  }

	/**
	 * setDisplayErrorString
	 * Sets Boolean
	 * @param DisplayErrorString Boolean
	 */
  public void setDisplayErrorString(Boolean DisplayErrorString) {
    this.DisplayErrorString = DisplayErrorString;
  }

  /**
	 * getDisplayImmediateItems
	 * Gets Boolean
	 * @return DisplayImmediateItems
	 */
  public Boolean getDisplayImmediateItems() {
    return DisplayImmediateItems;
  }

	/**
	 * setDisplayImmediateItems
	 * Sets Boolean
	 * @param DisplayImmediateItems Boolean
	 */
  public void setDisplayImmediateItems(Boolean DisplayImmediateItems) {
    this.DisplayImmediateItems = DisplayImmediateItems;
  }

  /**
	 * getDisplayNullString
	 * Gets Boolean
	 * @return DisplayNullString
	 */
  public Boolean getDisplayNullString() {
    return DisplayNullString;
  }

	/**
	 * setDisplayNullString
	 * Sets Boolean
	 * @param DisplayNullString Boolean
	 */
  public void setDisplayNullString(Boolean DisplayNullString) {
    this.DisplayNullString = DisplayNullString;
  }

  /**
	 * getEnableDataValueEditing
	 * Gets Boolean
	 * @return EnableDataValueEditing
	 */
  public Boolean getEnableDataValueEditing() {
    return EnableDataValueEditing;
  }

	/**
	 * setEnableDataValueEditing
	 * Sets Boolean
	 * @param EnableDataValueEditing Boolean
	 */
  public void setEnableDataValueEditing(Boolean EnableDataValueEditing) {
    this.EnableDataValueEditing = EnableDataValueEditing;
  }

  /**
	 * getEnableDrilldown
	 * Gets Boolean
	 * @return EnableDrilldown
	 */
  public Boolean getEnableDrilldown() {
    return EnableDrilldown;
  }

	/**
	 * setEnableDrilldown
	 * Sets Boolean
	 * @param EnableDrilldown Boolean
	 */
  public void setEnableDrilldown(Boolean EnableDrilldown) {
    this.EnableDrilldown = EnableDrilldown;
  }

  /**
	 * getEnableFieldDialog
	 * Gets Boolean
	 * @return EnableFieldDialog
	 */
  public Boolean getEnableFieldDialog() {
    return EnableFieldDialog;
  }

	/**
	 * setEnableFieldDialog
	 * Sets Boolean
	 * @param EnableFieldDialog Boolean
	 */
  public void setEnableFieldDialog(Boolean EnableFieldDialog) {
    this.EnableFieldDialog = EnableFieldDialog;
  }

  /**
	 * getEnableFieldList
	 * Gets Boolean
	 * @return EnableFieldList
	 */
  public Boolean getEnableFieldList() {
    return EnableFieldList;
  }

	/**
	 * setEnableFieldList
	 * Sets Boolean
	 * @param EnableFieldList Boolean
	 */
  public void setEnableFieldList(Boolean EnableFieldList) {
    this.EnableFieldList = EnableFieldList;
  }

  /**
	 * getEnableWizard
	 * Gets Boolean
	 * @return EnableWizard
	 */
  public Boolean getEnableWizard() {
    return EnableWizard;
  }

	/**
	 * setEnableWizard
	 * Sets Boolean
	 * @param EnableWizard Boolean
	 */
  public void setEnableWizard(Boolean EnableWizard) {
    this.EnableWizard = EnableWizard;
  }

  /**
	 * getErrorString
	 * Gets String
	 * @return ErrorString
	 */
  public String getErrorString() {
    return ErrorString;
  }

	/**
	 * setErrorString
	 * Sets String
	 * @param ErrorString String
	 */
  public void setErrorString(String ErrorString) {
    this.ErrorString = ErrorString;
  }

  /**
	 * getFieldListSortAscending
	 * Gets Boolean
	 * @return FieldListSortAscending
	 */
  public Boolean getFieldListSortAscending() {
    return FieldListSortAscending;
  }

	/**
	 * setFieldListSortAscending
	 * Sets Boolean
	 * @param FieldListSortAscending Boolean
	 */
  public void setFieldListSortAscending(Boolean FieldListSortAscending) {
    this.FieldListSortAscending = FieldListSortAscending;
  }

  /**
	 * getGrandTotalName
	 * Gets String
	 * @return GrandTotalName
	 */
  public String getGrandTotalName() {
    return GrandTotalName;
  }

	/**
	 * setGrandTotalName
	 * Sets String
	 * @param GrandTotalName String
	 */
  public void setGrandTotalName(String GrandTotalName) {
    this.GrandTotalName = GrandTotalName;
  }

  /**
	 * getHasBlankRows
	 * Gets Boolean
	 * @return HasBlankRows
	 */
  public Boolean getHasBlankRows() {
    return HasBlankRows;
  }

	/**
	 * setHasBlankRows
	 * Sets Boolean
	 * @param HasBlankRows Boolean
	 */
  public void setHasBlankRows(Boolean HasBlankRows) {
    this.HasBlankRows = HasBlankRows;
  }

  /**
	 * getIndent
	 * Gets Integer
	 * @return Indent
	 */
  public Integer getIndent() {
    return Indent;
  }

	/**
	 * setIndent
	 * Sets Integer
	 * @param Indent Integer
	 */
  public void setIndent(Integer Indent) {
    this.Indent = Indent;
  }

  /**
	 * getIsAutoFormat
	 * Gets Boolean
	 * @return IsAutoFormat
	 */
  public Boolean getIsAutoFormat() {
    return IsAutoFormat;
  }

	/**
	 * setIsAutoFormat
	 * Sets Boolean
	 * @param IsAutoFormat Boolean
	 */
  public void setIsAutoFormat(Boolean IsAutoFormat) {
    this.IsAutoFormat = IsAutoFormat;
  }

  /**
	 * getIsGridDropZones
	 * Gets Boolean
	 * @return IsGridDropZones
	 */
  public Boolean getIsGridDropZones() {
    return IsGridDropZones;
  }

	/**
	 * setIsGridDropZones
	 * Sets Boolean
	 * @param IsGridDropZones Boolean
	 */
  public void setIsGridDropZones(Boolean IsGridDropZones) {
    this.IsGridDropZones = IsGridDropZones;
  }

  /**
	 * getIsMultipleFieldFilters
	 * Gets Boolean
	 * @return IsMultipleFieldFilters
	 */
  public Boolean getIsMultipleFieldFilters() {
    return IsMultipleFieldFilters;
  }

	/**
	 * setIsMultipleFieldFilters
	 * Sets Boolean
	 * @param IsMultipleFieldFilters Boolean
	 */
  public void setIsMultipleFieldFilters(Boolean IsMultipleFieldFilters) {
    this.IsMultipleFieldFilters = IsMultipleFieldFilters;
  }

  /**
	 * getIsSelected
	 * Gets Boolean
	 * @return IsSelected
	 */
  public Boolean getIsSelected() {
    return IsSelected;
  }

	/**
	 * setIsSelected
	 * Sets Boolean
	 * @param IsSelected Boolean
	 */
  public void setIsSelected(Boolean IsSelected) {
    this.IsSelected = IsSelected;
  }

  /**
	 * getItemPrintTitles
	 * Gets Boolean
	 * @return ItemPrintTitles
	 */
  public Boolean getItemPrintTitles() {
    return ItemPrintTitles;
  }

	/**
	 * setItemPrintTitles
	 * Sets Boolean
	 * @param ItemPrintTitles Boolean
	 */
  public void setItemPrintTitles(Boolean ItemPrintTitles) {
    this.ItemPrintTitles = ItemPrintTitles;
  }

  /**
	 * getManualUpdate
	 * Gets Boolean
	 * @return ManualUpdate
	 */
  public Boolean getManualUpdate() {
    return ManualUpdate;
  }

	/**
	 * setManualUpdate
	 * Sets Boolean
	 * @param ManualUpdate Boolean
	 */
  public void setManualUpdate(Boolean ManualUpdate) {
    this.ManualUpdate = ManualUpdate;
  }

  /**
	 * getMergeLabels
	 * Gets Boolean
	 * @return MergeLabels
	 */
  public Boolean getMergeLabels() {
    return MergeLabels;
  }

	/**
	 * setMergeLabels
	 * Sets Boolean
	 * @param MergeLabels Boolean
	 */
  public void setMergeLabels(Boolean MergeLabels) {
    this.MergeLabels = MergeLabels;
  }

  /**
	 * getMissingItemsLimit
	 * Gets String
	 * @return MissingItemsLimit
	 */
  public String getMissingItemsLimit() {
    return MissingItemsLimit;
  }

	/**
	 * setMissingItemsLimit
	 * Sets String
	 * @param MissingItemsLimit String
	 */
  public void setMissingItemsLimit(String MissingItemsLimit) {
    this.MissingItemsLimit = MissingItemsLimit;
  }

  /**
	 * getName
	 * Gets String
	 * @return Name
	 */
  public String getName() {
    return Name;
  }

	/**
	 * setName
	 * Sets String
	 * @param Name String
	 */
  public void setName(String Name) {
    this.Name = Name;
  }

  /**
	 * getNullString
	 * Gets String
	 * @return NullString
	 */
  public String getNullString() {
    return NullString;
  }

	/**
	 * setNullString
	 * Sets String
	 * @param NullString String
	 */
  public void setNullString(String NullString) {
    this.NullString = NullString;
  }

  /**
	 * getPageFieldOrder
	 * Gets String
	 * @return PageFieldOrder
	 */
  public String getPageFieldOrder() {
    return PageFieldOrder;
  }

	/**
	 * setPageFieldOrder
	 * Sets String
	 * @param PageFieldOrder String
	 */
  public void setPageFieldOrder(String PageFieldOrder) {
    this.PageFieldOrder = PageFieldOrder;
  }

  /**
	 * getPageFields
	 * Gets List<PivotField>
	 * @return PageFields
	 */
  public List<PivotField> getPageFields() {
    return PageFields;
  }

	/**
	 * setPageFields
	 * Sets List<PivotField>
	 * @param PageFields List<PivotField>
	 */
  public void setPageFields(List<PivotField> PageFields) {
    this.PageFields = PageFields;
  }

  /**
	 * getPageFieldWrapCount
	 * Gets Integer
	 * @return PageFieldWrapCount
	 */
  public Integer getPageFieldWrapCount() {
    return PageFieldWrapCount;
  }

	/**
	 * setPageFieldWrapCount
	 * Sets Integer
	 * @param PageFieldWrapCount Integer
	 */
  public void setPageFieldWrapCount(Integer PageFieldWrapCount) {
    this.PageFieldWrapCount = PageFieldWrapCount;
  }

  /**
	 * getPivotFilters
	 * Gets List<PivotFilter>
	 * @return PivotFilters
	 */
  public List<PivotFilter> getPivotFilters() {
    return PivotFilters;
  }

	/**
	 * setPivotFilters
	 * Sets List<PivotFilter>
	 * @param PivotFilters List<PivotFilter>
	 */
  public void setPivotFilters(List<PivotFilter> PivotFilters) {
    this.PivotFilters = PivotFilters;
  }

  /**
	 * getPivotTableStyleName
	 * Gets String
	 * @return PivotTableStyleName
	 */
  public String getPivotTableStyleName() {
    return PivotTableStyleName;
  }

	/**
	 * setPivotTableStyleName
	 * Sets String
	 * @param PivotTableStyleName String
	 */
  public void setPivotTableStyleName(String PivotTableStyleName) {
    this.PivotTableStyleName = PivotTableStyleName;
  }

  /**
	 * getPivotTableStyleType
	 * Gets String
	 * @return PivotTableStyleType
	 */
  public String getPivotTableStyleType() {
    return PivotTableStyleType;
  }

	/**
	 * setPivotTableStyleType
	 * Sets String
	 * @param PivotTableStyleType String
	 */
  public void setPivotTableStyleType(String PivotTableStyleType) {
    this.PivotTableStyleType = PivotTableStyleType;
  }

  /**
	 * getPreserveFormatting
	 * Gets Boolean
	 * @return PreserveFormatting
	 */
  public Boolean getPreserveFormatting() {
    return PreserveFormatting;
  }

	/**
	 * setPreserveFormatting
	 * Sets Boolean
	 * @param PreserveFormatting Boolean
	 */
  public void setPreserveFormatting(Boolean PreserveFormatting) {
    this.PreserveFormatting = PreserveFormatting;
  }

  /**
	 * getPrintDrill
	 * Gets Boolean
	 * @return PrintDrill
	 */
  public Boolean getPrintDrill() {
    return PrintDrill;
  }

	/**
	 * setPrintDrill
	 * Sets Boolean
	 * @param PrintDrill Boolean
	 */
  public void setPrintDrill(Boolean PrintDrill) {
    this.PrintDrill = PrintDrill;
  }

  /**
	 * getPrintTitles
	 * Gets Boolean
	 * @return PrintTitles
	 */
  public Boolean getPrintTitles() {
    return PrintTitles;
  }

	/**
	 * setPrintTitles
	 * Sets Boolean
	 * @param PrintTitles Boolean
	 */
  public void setPrintTitles(Boolean PrintTitles) {
    this.PrintTitles = PrintTitles;
  }

  /**
	 * getRefreshDataFlag
	 * Gets Boolean
	 * @return RefreshDataFlag
	 */
  public Boolean getRefreshDataFlag() {
    return RefreshDataFlag;
  }

	/**
	 * setRefreshDataFlag
	 * Sets Boolean
	 * @param RefreshDataFlag Boolean
	 */
  public void setRefreshDataFlag(Boolean RefreshDataFlag) {
    this.RefreshDataFlag = RefreshDataFlag;
  }

  /**
	 * getRefreshDataOnOpeningFile
	 * Gets Boolean
	 * @return RefreshDataOnOpeningFile
	 */
  public Boolean getRefreshDataOnOpeningFile() {
    return RefreshDataOnOpeningFile;
  }

	/**
	 * setRefreshDataOnOpeningFile
	 * Sets Boolean
	 * @param RefreshDataOnOpeningFile Boolean
	 */
  public void setRefreshDataOnOpeningFile(Boolean RefreshDataOnOpeningFile) {
    this.RefreshDataOnOpeningFile = RefreshDataOnOpeningFile;
  }

  /**
	 * getRowFields
	 * Gets List<PivotField>
	 * @return RowFields
	 */
  public List<PivotField> getRowFields() {
    return RowFields;
  }

	/**
	 * setRowFields
	 * Sets List<PivotField>
	 * @param RowFields List<PivotField>
	 */
  public void setRowFields(List<PivotField> RowFields) {
    this.RowFields = RowFields;
  }

  /**
	 * getRowGrand
	 * Gets Boolean
	 * @return RowGrand
	 */
  public Boolean getRowGrand() {
    return RowGrand;
  }

	/**
	 * setRowGrand
	 * Sets Boolean
	 * @param RowGrand Boolean
	 */
  public void setRowGrand(Boolean RowGrand) {
    this.RowGrand = RowGrand;
  }

  /**
	 * getRowHeaderCaption
	 * Gets String
	 * @return RowHeaderCaption
	 */
  public String getRowHeaderCaption() {
    return RowHeaderCaption;
  }

	/**
	 * setRowHeaderCaption
	 * Sets String
	 * @param RowHeaderCaption String
	 */
  public void setRowHeaderCaption(String RowHeaderCaption) {
    this.RowHeaderCaption = RowHeaderCaption;
  }

  /**
	 * getRowRange
	 * Gets CellArea
	 * @return RowRange
	 */
  public CellArea getRowRange() {
    return RowRange;
  }

	/**
	 * setRowRange
	 * Sets CellArea
	 * @param RowRange CellArea
	 */
  public void setRowRange(CellArea RowRange) {
    this.RowRange = RowRange;
  }

  /**
	 * getSaveData
	 * Gets Boolean
	 * @return SaveData
	 */
  public Boolean getSaveData() {
    return SaveData;
  }

	/**
	 * setSaveData
	 * Sets Boolean
	 * @param SaveData Boolean
	 */
  public void setSaveData(Boolean SaveData) {
    this.SaveData = SaveData;
  }

  /**
	 * getShowDataTips
	 * Gets Boolean
	 * @return ShowDataTips
	 */
  public Boolean getShowDataTips() {
    return ShowDataTips;
  }

	/**
	 * setShowDataTips
	 * Sets Boolean
	 * @param ShowDataTips Boolean
	 */
  public void setShowDataTips(Boolean ShowDataTips) {
    this.ShowDataTips = ShowDataTips;
  }

  /**
	 * getShowDrill
	 * Gets Boolean
	 * @return ShowDrill
	 */
  public Boolean getShowDrill() {
    return ShowDrill;
  }

	/**
	 * setShowDrill
	 * Sets Boolean
	 * @param ShowDrill Boolean
	 */
  public void setShowDrill(Boolean ShowDrill) {
    this.ShowDrill = ShowDrill;
  }

  /**
	 * getShowEmptyCol
	 * Gets Boolean
	 * @return ShowEmptyCol
	 */
  public Boolean getShowEmptyCol() {
    return ShowEmptyCol;
  }

	/**
	 * setShowEmptyCol
	 * Sets Boolean
	 * @param ShowEmptyCol Boolean
	 */
  public void setShowEmptyCol(Boolean ShowEmptyCol) {
    this.ShowEmptyCol = ShowEmptyCol;
  }

  /**
	 * getShowEmptyRow
	 * Gets Boolean
	 * @return ShowEmptyRow
	 */
  public Boolean getShowEmptyRow() {
    return ShowEmptyRow;
  }

	/**
	 * setShowEmptyRow
	 * Sets Boolean
	 * @param ShowEmptyRow Boolean
	 */
  public void setShowEmptyRow(Boolean ShowEmptyRow) {
    this.ShowEmptyRow = ShowEmptyRow;
  }

  /**
	 * getShowMemberPropertyTips
	 * Gets Boolean
	 * @return ShowMemberPropertyTips
	 */
  public Boolean getShowMemberPropertyTips() {
    return ShowMemberPropertyTips;
  }

	/**
	 * setShowMemberPropertyTips
	 * Sets Boolean
	 * @param ShowMemberPropertyTips Boolean
	 */
  public void setShowMemberPropertyTips(Boolean ShowMemberPropertyTips) {
    this.ShowMemberPropertyTips = ShowMemberPropertyTips;
  }

  /**
	 * getShowPivotStyleColumnHeader
	 * Gets Boolean
	 * @return ShowPivotStyleColumnHeader
	 */
  public Boolean getShowPivotStyleColumnHeader() {
    return ShowPivotStyleColumnHeader;
  }

	/**
	 * setShowPivotStyleColumnHeader
	 * Sets Boolean
	 * @param ShowPivotStyleColumnHeader Boolean
	 */
  public void setShowPivotStyleColumnHeader(Boolean ShowPivotStyleColumnHeader) {
    this.ShowPivotStyleColumnHeader = ShowPivotStyleColumnHeader;
  }

  /**
	 * getShowPivotStyleColumnStripes
	 * Gets Boolean
	 * @return ShowPivotStyleColumnStripes
	 */
  public Boolean getShowPivotStyleColumnStripes() {
    return ShowPivotStyleColumnStripes;
  }

	/**
	 * setShowPivotStyleColumnStripes
	 * Sets Boolean
	 * @param ShowPivotStyleColumnStripes Boolean
	 */
  public void setShowPivotStyleColumnStripes(Boolean ShowPivotStyleColumnStripes) {
    this.ShowPivotStyleColumnStripes = ShowPivotStyleColumnStripes;
  }

  /**
	 * getShowPivotStyleLastColumn
	 * Gets Boolean
	 * @return ShowPivotStyleLastColumn
	 */
  public Boolean getShowPivotStyleLastColumn() {
    return ShowPivotStyleLastColumn;
  }

	/**
	 * setShowPivotStyleLastColumn
	 * Sets Boolean
	 * @param ShowPivotStyleLastColumn Boolean
	 */
  public void setShowPivotStyleLastColumn(Boolean ShowPivotStyleLastColumn) {
    this.ShowPivotStyleLastColumn = ShowPivotStyleLastColumn;
  }

  /**
	 * getShowPivotStyleRowHeader
	 * Gets Boolean
	 * @return ShowPivotStyleRowHeader
	 */
  public Boolean getShowPivotStyleRowHeader() {
    return ShowPivotStyleRowHeader;
  }

	/**
	 * setShowPivotStyleRowHeader
	 * Sets Boolean
	 * @param ShowPivotStyleRowHeader Boolean
	 */
  public void setShowPivotStyleRowHeader(Boolean ShowPivotStyleRowHeader) {
    this.ShowPivotStyleRowHeader = ShowPivotStyleRowHeader;
  }

  /**
	 * getShowPivotStyleRowStripes
	 * Gets Boolean
	 * @return ShowPivotStyleRowStripes
	 */
  public Boolean getShowPivotStyleRowStripes() {
    return ShowPivotStyleRowStripes;
  }

	/**
	 * setShowPivotStyleRowStripes
	 * Sets Boolean
	 * @param ShowPivotStyleRowStripes Boolean
	 */
  public void setShowPivotStyleRowStripes(Boolean ShowPivotStyleRowStripes) {
    this.ShowPivotStyleRowStripes = ShowPivotStyleRowStripes;
  }

  /**
	 * getShowRowHeaderCaption
	 * Gets Boolean
	 * @return ShowRowHeaderCaption
	 */
  public Boolean getShowRowHeaderCaption() {
    return ShowRowHeaderCaption;
  }

	/**
	 * setShowRowHeaderCaption
	 * Sets Boolean
	 * @param ShowRowHeaderCaption Boolean
	 */
  public void setShowRowHeaderCaption(Boolean ShowRowHeaderCaption) {
    this.ShowRowHeaderCaption = ShowRowHeaderCaption;
  }

  /**
	 * getShowValuesRow
	 * Gets Boolean
	 * @return ShowValuesRow
	 */
  public Boolean getShowValuesRow() {
    return ShowValuesRow;
  }

	/**
	 * setShowValuesRow
	 * Sets Boolean
	 * @param ShowValuesRow Boolean
	 */
  public void setShowValuesRow(Boolean ShowValuesRow) {
    this.ShowValuesRow = ShowValuesRow;
  }

  /**
	 * getSubtotalHiddenPageItems
	 * Gets Boolean
	 * @return SubtotalHiddenPageItems
	 */
  public Boolean getSubtotalHiddenPageItems() {
    return SubtotalHiddenPageItems;
  }

	/**
	 * setSubtotalHiddenPageItems
	 * Sets Boolean
	 * @param SubtotalHiddenPageItems Boolean
	 */
  public void setSubtotalHiddenPageItems(Boolean SubtotalHiddenPageItems) {
    this.SubtotalHiddenPageItems = SubtotalHiddenPageItems;
  }

  /**
	 * getTableRange1
	 * Gets CellArea
	 * @return TableRange1
	 */
  public CellArea getTableRange1() {
    return TableRange1;
  }

	/**
	 * setTableRange1
	 * Sets CellArea
	 * @param TableRange1 CellArea
	 */
  public void setTableRange1(CellArea TableRange1) {
    this.TableRange1 = TableRange1;
  }

  /**
	 * getTableRange2
	 * Gets CellArea
	 * @return TableRange2
	 */
  public CellArea getTableRange2() {
    return TableRange2;
  }

	/**
	 * setTableRange2
	 * Sets CellArea
	 * @param TableRange2 CellArea
	 */
  public void setTableRange2(CellArea TableRange2) {
    this.TableRange2 = TableRange2;
  }

  /**
	 * getTag
	 * Gets String
	 * @return Tag
	 */
  public String getTag() {
    return Tag;
  }

	/**
	 * setTag
	 * Sets String
	 * @param Tag String
	 */
  public void setTag(String Tag) {
    this.Tag = Tag;
  }

  /**
	 * getLink
	 * Gets Link
	 * @return link
	 */
  public Link getLink() {
    return link;
  }

	/**
	 * setLink
	 * Sets Link
	 * @param link Link
	 */
  public void setLink(Link link) {
    this.link = link;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PivotTable {\n");
    sb.append("  AltTextDescription: ").append(AltTextDescription).append("\n");
    sb.append("  AltTextTitle: ").append(AltTextTitle).append("\n");
    sb.append("  AutoFormatType: ").append(AutoFormatType).append("\n");
    sb.append("  BaseFields: ").append(BaseFields).append("\n");
    sb.append("  ColumnFields: ").append(ColumnFields).append("\n");
    sb.append("  ColumnGrand: ").append(ColumnGrand).append("\n");
    sb.append("  ColumnHeaderCaption: ").append(ColumnHeaderCaption).append("\n");
    sb.append("  ColumnRange: ").append(ColumnRange).append("\n");
    sb.append("  CustomListSort: ").append(CustomListSort).append("\n");
    sb.append("  DataBodyRange: ").append(DataBodyRange).append("\n");
    sb.append("  DataField: ").append(DataField).append("\n");
    sb.append("  DataFields: ").append(DataFields).append("\n");
    sb.append("  DataSource: ").append(DataSource).append("\n");
    sb.append("  DisplayErrorString: ").append(DisplayErrorString).append("\n");
    sb.append("  DisplayImmediateItems: ").append(DisplayImmediateItems).append("\n");
    sb.append("  DisplayNullString: ").append(DisplayNullString).append("\n");
    sb.append("  EnableDataValueEditing: ").append(EnableDataValueEditing).append("\n");
    sb.append("  EnableDrilldown: ").append(EnableDrilldown).append("\n");
    sb.append("  EnableFieldDialog: ").append(EnableFieldDialog).append("\n");
    sb.append("  EnableFieldList: ").append(EnableFieldList).append("\n");
    sb.append("  EnableWizard: ").append(EnableWizard).append("\n");
    sb.append("  ErrorString: ").append(ErrorString).append("\n");
    sb.append("  FieldListSortAscending: ").append(FieldListSortAscending).append("\n");
    sb.append("  GrandTotalName: ").append(GrandTotalName).append("\n");
    sb.append("  HasBlankRows: ").append(HasBlankRows).append("\n");
    sb.append("  Indent: ").append(Indent).append("\n");
    sb.append("  IsAutoFormat: ").append(IsAutoFormat).append("\n");
    sb.append("  IsGridDropZones: ").append(IsGridDropZones).append("\n");
    sb.append("  IsMultipleFieldFilters: ").append(IsMultipleFieldFilters).append("\n");
    sb.append("  IsSelected: ").append(IsSelected).append("\n");
    sb.append("  ItemPrintTitles: ").append(ItemPrintTitles).append("\n");
    sb.append("  ManualUpdate: ").append(ManualUpdate).append("\n");
    sb.append("  MergeLabels: ").append(MergeLabels).append("\n");
    sb.append("  MissingItemsLimit: ").append(MissingItemsLimit).append("\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  NullString: ").append(NullString).append("\n");
    sb.append("  PageFieldOrder: ").append(PageFieldOrder).append("\n");
    sb.append("  PageFields: ").append(PageFields).append("\n");
    sb.append("  PageFieldWrapCount: ").append(PageFieldWrapCount).append("\n");
    sb.append("  PivotFilters: ").append(PivotFilters).append("\n");
    sb.append("  PivotTableStyleName: ").append(PivotTableStyleName).append("\n");
    sb.append("  PivotTableStyleType: ").append(PivotTableStyleType).append("\n");
    sb.append("  PreserveFormatting: ").append(PreserveFormatting).append("\n");
    sb.append("  PrintDrill: ").append(PrintDrill).append("\n");
    sb.append("  PrintTitles: ").append(PrintTitles).append("\n");
    sb.append("  RefreshDataFlag: ").append(RefreshDataFlag).append("\n");
    sb.append("  RefreshDataOnOpeningFile: ").append(RefreshDataOnOpeningFile).append("\n");
    sb.append("  RowFields: ").append(RowFields).append("\n");
    sb.append("  RowGrand: ").append(RowGrand).append("\n");
    sb.append("  RowHeaderCaption: ").append(RowHeaderCaption).append("\n");
    sb.append("  RowRange: ").append(RowRange).append("\n");
    sb.append("  SaveData: ").append(SaveData).append("\n");
    sb.append("  ShowDataTips: ").append(ShowDataTips).append("\n");
    sb.append("  ShowDrill: ").append(ShowDrill).append("\n");
    sb.append("  ShowEmptyCol: ").append(ShowEmptyCol).append("\n");
    sb.append("  ShowEmptyRow: ").append(ShowEmptyRow).append("\n");
    sb.append("  ShowMemberPropertyTips: ").append(ShowMemberPropertyTips).append("\n");
    sb.append("  ShowPivotStyleColumnHeader: ").append(ShowPivotStyleColumnHeader).append("\n");
    sb.append("  ShowPivotStyleColumnStripes: ").append(ShowPivotStyleColumnStripes).append("\n");
    sb.append("  ShowPivotStyleLastColumn: ").append(ShowPivotStyleLastColumn).append("\n");
    sb.append("  ShowPivotStyleRowHeader: ").append(ShowPivotStyleRowHeader).append("\n");
    sb.append("  ShowPivotStyleRowStripes: ").append(ShowPivotStyleRowStripes).append("\n");
    sb.append("  ShowRowHeaderCaption: ").append(ShowRowHeaderCaption).append("\n");
    sb.append("  ShowValuesRow: ").append(ShowValuesRow).append("\n");
    sb.append("  SubtotalHiddenPageItems: ").append(SubtotalHiddenPageItems).append("\n");
    sb.append("  TableRange1: ").append(TableRange1).append("\n");
    sb.append("  TableRange2: ").append(TableRange2).append("\n");
    sb.append("  Tag: ").append(Tag).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

