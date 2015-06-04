package com.aspose.cells.model;

import com.aspose.cells.model.AutoFilter;
public class PivotFilter {
  private AutoFilter AutoFilter = null;
  private Integer EvaluationOrder = null;
  private Integer FieldIndex = null;
  private String FilterType = null;
  private Integer MeasureFldIndex = null;
  private Integer MemberPropertyFieldIndex = null;
  private String Name = null;
  private String Value1 = null;
  private String Value2 = null;
  /**
	 * getAutoFilter
	 * Gets AutoFilter
	 * @return AutoFilter
	 */
  public AutoFilter getAutoFilter() {
    return AutoFilter;
  }

	/**
	 * setAutoFilter
	 * Sets AutoFilter
	 * @param AutoFilter AutoFilter
	 */
  public void setAutoFilter(AutoFilter AutoFilter) {
    this.AutoFilter = AutoFilter;
  }

  /**
	 * getEvaluationOrder
	 * Gets Integer
	 * @return EvaluationOrder
	 */
  public Integer getEvaluationOrder() {
    return EvaluationOrder;
  }

	/**
	 * setEvaluationOrder
	 * Sets Integer
	 * @param EvaluationOrder Integer
	 */
  public void setEvaluationOrder(Integer EvaluationOrder) {
    this.EvaluationOrder = EvaluationOrder;
  }

  /**
	 * getFieldIndex
	 * Gets Integer
	 * @return FieldIndex
	 */
  public Integer getFieldIndex() {
    return FieldIndex;
  }

	/**
	 * setFieldIndex
	 * Sets Integer
	 * @param FieldIndex Integer
	 */
  public void setFieldIndex(Integer FieldIndex) {
    this.FieldIndex = FieldIndex;
  }

  /**
	 * getFilterType
	 * Gets String
	 * @return FilterType
	 */
  public String getFilterType() {
    return FilterType;
  }

	/**
	 * setFilterType
	 * Sets String
	 * @param FilterType String
	 */
  public void setFilterType(String FilterType) {
    this.FilterType = FilterType;
  }

  /**
	 * getMeasureFldIndex
	 * Gets Integer
	 * @return MeasureFldIndex
	 */
  public Integer getMeasureFldIndex() {
    return MeasureFldIndex;
  }

	/**
	 * setMeasureFldIndex
	 * Sets Integer
	 * @param MeasureFldIndex Integer
	 */
  public void setMeasureFldIndex(Integer MeasureFldIndex) {
    this.MeasureFldIndex = MeasureFldIndex;
  }

  /**
	 * getMemberPropertyFieldIndex
	 * Gets Integer
	 * @return MemberPropertyFieldIndex
	 */
  public Integer getMemberPropertyFieldIndex() {
    return MemberPropertyFieldIndex;
  }

	/**
	 * setMemberPropertyFieldIndex
	 * Sets Integer
	 * @param MemberPropertyFieldIndex Integer
	 */
  public void setMemberPropertyFieldIndex(Integer MemberPropertyFieldIndex) {
    this.MemberPropertyFieldIndex = MemberPropertyFieldIndex;
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
	 * getValue1
	 * Gets String
	 * @return Value1
	 */
  public String getValue1() {
    return Value1;
  }

	/**
	 * setValue1
	 * Sets String
	 * @param Value1 String
	 */
  public void setValue1(String Value1) {
    this.Value1 = Value1;
  }

  /**
	 * getValue2
	 * Gets String
	 * @return Value2
	 */
  public String getValue2() {
    return Value2;
  }

	/**
	 * setValue2
	 * Sets String
	 * @param Value2 String
	 */
  public void setValue2(String Value2) {
    this.Value2 = Value2;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PivotFilter {\n");
    sb.append("  AutoFilter: ").append(AutoFilter).append("\n");
    sb.append("  EvaluationOrder: ").append(EvaluationOrder).append("\n");
    sb.append("  FieldIndex: ").append(FieldIndex).append("\n");
    sb.append("  FilterType: ").append(FilterType).append("\n");
    sb.append("  MeasureFldIndex: ").append(MeasureFldIndex).append("\n");
    sb.append("  MemberPropertyFieldIndex: ").append(MemberPropertyFieldIndex).append("\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Value1: ").append(Value1).append("\n");
    sb.append("  Value2: ").append(Value2).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

