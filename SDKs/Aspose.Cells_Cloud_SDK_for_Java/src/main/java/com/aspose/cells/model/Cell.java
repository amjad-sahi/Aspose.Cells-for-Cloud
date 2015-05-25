package com.aspose.cells.model;

import com.aspose.cells.model.Link;
import com.aspose.cells.model.LinkElement;
public class Cell {
  private String Name = null;
  private Integer Row = null;
  private Integer Column = null;
  private String Value = null;
  private String Type = null;
  private String Formula = null;
  private Boolean IsFormula = null;
  private Boolean IsMerged = null;
  private Boolean IsArrayHeader = null;
  private Boolean IsInArray = null;
  private Boolean IsErrorValue = null;
  private Boolean IsInTable = null;
  private Boolean IsStyleSet = null;
  private String HtmlString = null;
  private LinkElement Style = null;
  private String Worksheet = null;
  private Link link = null;
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
	 * getRow
	 * Gets Integer
	 * @return Row
	 */
  public Integer getRow() {
    return Row;
  }

	/**
	 * setRow
	 * Sets Integer
	 * @param Row Integer
	 */
  public void setRow(Integer Row) {
    this.Row = Row;
  }

  /**
	 * getColumn
	 * Gets Integer
	 * @return Column
	 */
  public Integer getColumn() {
    return Column;
  }

	/**
	 * setColumn
	 * Sets Integer
	 * @param Column Integer
	 */
  public void setColumn(Integer Column) {
    this.Column = Column;
  }

  /**
	 * getValue
	 * Gets String
	 * @return Value
	 */
  public String getValue() {
    return Value;
  }

	/**
	 * setValue
	 * Sets String
	 * @param Value String
	 */
  public void setValue(String Value) {
    this.Value = Value;
  }

  /**
	 * getType
	 * Gets String
	 * @return Type
	 */
  public String getType() {
    return Type;
  }

	/**
	 * setType
	 * Sets String
	 * @param Type String
	 */
  public void setType(String Type) {
    this.Type = Type;
  }

  /**
	 * getFormula
	 * Gets String
	 * @return Formula
	 */
  public String getFormula() {
    return Formula;
  }

	/**
	 * setFormula
	 * Sets String
	 * @param Formula String
	 */
  public void setFormula(String Formula) {
    this.Formula = Formula;
  }

  /**
	 * getIsFormula
	 * Gets Boolean
	 * @return IsFormula
	 */
  public Boolean getIsFormula() {
    return IsFormula;
  }

	/**
	 * setIsFormula
	 * Sets Boolean
	 * @param IsFormula Boolean
	 */
  public void setIsFormula(Boolean IsFormula) {
    this.IsFormula = IsFormula;
  }

  /**
	 * getIsMerged
	 * Gets Boolean
	 * @return IsMerged
	 */
  public Boolean getIsMerged() {
    return IsMerged;
  }

	/**
	 * setIsMerged
	 * Sets Boolean
	 * @param IsMerged Boolean
	 */
  public void setIsMerged(Boolean IsMerged) {
    this.IsMerged = IsMerged;
  }

  /**
	 * getIsArrayHeader
	 * Gets Boolean
	 * @return IsArrayHeader
	 */
  public Boolean getIsArrayHeader() {
    return IsArrayHeader;
  }

	/**
	 * setIsArrayHeader
	 * Sets Boolean
	 * @param IsArrayHeader Boolean
	 */
  public void setIsArrayHeader(Boolean IsArrayHeader) {
    this.IsArrayHeader = IsArrayHeader;
  }

  /**
	 * getIsInArray
	 * Gets Boolean
	 * @return IsInArray
	 */
  public Boolean getIsInArray() {
    return IsInArray;
  }

	/**
	 * setIsInArray
	 * Sets Boolean
	 * @param IsInArray Boolean
	 */
  public void setIsInArray(Boolean IsInArray) {
    this.IsInArray = IsInArray;
  }

  /**
	 * getIsErrorValue
	 * Gets Boolean
	 * @return IsErrorValue
	 */
  public Boolean getIsErrorValue() {
    return IsErrorValue;
  }

	/**
	 * setIsErrorValue
	 * Sets Boolean
	 * @param IsErrorValue Boolean
	 */
  public void setIsErrorValue(Boolean IsErrorValue) {
    this.IsErrorValue = IsErrorValue;
  }

  /**
	 * getIsInTable
	 * Gets Boolean
	 * @return IsInTable
	 */
  public Boolean getIsInTable() {
    return IsInTable;
  }

	/**
	 * setIsInTable
	 * Sets Boolean
	 * @param IsInTable Boolean
	 */
  public void setIsInTable(Boolean IsInTable) {
    this.IsInTable = IsInTable;
  }

  /**
	 * getIsStyleSet
	 * Gets Boolean
	 * @return IsStyleSet
	 */
  public Boolean getIsStyleSet() {
    return IsStyleSet;
  }

	/**
	 * setIsStyleSet
	 * Sets Boolean
	 * @param IsStyleSet Boolean
	 */
  public void setIsStyleSet(Boolean IsStyleSet) {
    this.IsStyleSet = IsStyleSet;
  }

  /**
	 * getHtmlString
	 * Gets String
	 * @return HtmlString
	 */
  public String getHtmlString() {
    return HtmlString;
  }

	/**
	 * setHtmlString
	 * Sets String
	 * @param HtmlString String
	 */
  public void setHtmlString(String HtmlString) {
    this.HtmlString = HtmlString;
  }

  /**
	 * getStyle
	 * Gets LinkElement
	 * @return Style
	 */
  public LinkElement getStyle() {
    return Style;
  }

	/**
	 * setStyle
	 * Sets LinkElement
	 * @param Style LinkElement
	 */
  public void setStyle(LinkElement Style) {
    this.Style = Style;
  }

  /**
	 * getWorksheet
	 * Gets String
	 * @return Worksheet
	 */
  public String getWorksheet() {
    return Worksheet;
  }

	/**
	 * setWorksheet
	 * Sets String
	 * @param Worksheet String
	 */
  public void setWorksheet(String Worksheet) {
    this.Worksheet = Worksheet;
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
    sb.append("class Cell {\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Row: ").append(Row).append("\n");
    sb.append("  Column: ").append(Column).append("\n");
    sb.append("  Value: ").append(Value).append("\n");
    sb.append("  Type: ").append(Type).append("\n");
    sb.append("  Formula: ").append(Formula).append("\n");
    sb.append("  IsFormula: ").append(IsFormula).append("\n");
    sb.append("  IsMerged: ").append(IsMerged).append("\n");
    sb.append("  IsArrayHeader: ").append(IsArrayHeader).append("\n");
    sb.append("  IsInArray: ").append(IsInArray).append("\n");
    sb.append("  IsErrorValue: ").append(IsErrorValue).append("\n");
    sb.append("  IsInTable: ").append(IsInTable).append("\n");
    sb.append("  IsStyleSet: ").append(IsStyleSet).append("\n");
    sb.append("  HtmlString: ").append(HtmlString).append("\n");
    sb.append("  Style: ").append(Style).append("\n");
    sb.append("  Worksheet: ").append(Worksheet).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

