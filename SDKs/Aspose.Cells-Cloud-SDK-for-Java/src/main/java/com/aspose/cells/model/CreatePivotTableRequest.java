package com.aspose.cells.model;

import java.util.*;
public class CreatePivotTableRequest {
  private String Name = null;
  private String SourceData = null;
  private String DestCellName = null;
  private Boolean UseSameSource = null;
  private List<Integer> PivotFieldRows = new ArrayList<Integer>();
  private List<Integer> PivotFieldColumns = new ArrayList<Integer>();
  private List<Integer> PivotFieldData = new ArrayList<Integer>();
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
	 * getSourceData
	 * Gets String
	 * @return SourceData
	 */
  public String getSourceData() {
    return SourceData;
  }

	/**
	 * setSourceData
	 * Sets String
	 * @param SourceData String
	 */
  public void setSourceData(String SourceData) {
    this.SourceData = SourceData;
  }

  /**
	 * getDestCellName
	 * Gets String
	 * @return DestCellName
	 */
  public String getDestCellName() {
    return DestCellName;
  }

	/**
	 * setDestCellName
	 * Sets String
	 * @param DestCellName String
	 */
  public void setDestCellName(String DestCellName) {
    this.DestCellName = DestCellName;
  }

  /**
	 * getUseSameSource
	 * Gets Boolean
	 * @return UseSameSource
	 */
  public Boolean getUseSameSource() {
    return UseSameSource;
  }

	/**
	 * setUseSameSource
	 * Sets Boolean
	 * @param UseSameSource Boolean
	 */
  public void setUseSameSource(Boolean UseSameSource) {
    this.UseSameSource = UseSameSource;
  }

  /**
	 * getPivotFieldRows
	 * Gets List<Integer>
	 * @return PivotFieldRows
	 */
  public List<Integer> getPivotFieldRows() {
    return PivotFieldRows;
  }

	/**
	 * setPivotFieldRows
	 * Sets List<Integer>
	 * @param PivotFieldRows List<Integer>
	 */
  public void setPivotFieldRows(List<Integer> PivotFieldRows) {
    this.PivotFieldRows = PivotFieldRows;
  }

  /**
	 * getPivotFieldColumns
	 * Gets List<Integer>
	 * @return PivotFieldColumns
	 */
  public List<Integer> getPivotFieldColumns() {
    return PivotFieldColumns;
  }

	/**
	 * setPivotFieldColumns
	 * Sets List<Integer>
	 * @param PivotFieldColumns List<Integer>
	 */
  public void setPivotFieldColumns(List<Integer> PivotFieldColumns) {
    this.PivotFieldColumns = PivotFieldColumns;
  }

  /**
	 * getPivotFieldData
	 * Gets List<Integer>
	 * @return PivotFieldData
	 */
  public List<Integer> getPivotFieldData() {
    return PivotFieldData;
  }

	/**
	 * setPivotFieldData
	 * Sets List<Integer>
	 * @param PivotFieldData List<Integer>
	 */
  public void setPivotFieldData(List<Integer> PivotFieldData) {
    this.PivotFieldData = PivotFieldData;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CreatePivotTableRequest {\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  SourceData: ").append(SourceData).append("\n");
    sb.append("  DestCellName: ").append(DestCellName).append("\n");
    sb.append("  UseSameSource: ").append(UseSameSource).append("\n");
    sb.append("  PivotFieldRows: ").append(PivotFieldRows).append("\n");
    sb.append("  PivotFieldColumns: ").append(PivotFieldColumns).append("\n");
    sb.append("  PivotFieldData: ").append(PivotFieldData).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

