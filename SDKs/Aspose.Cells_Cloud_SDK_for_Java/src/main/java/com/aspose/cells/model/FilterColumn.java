package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.MultipleFilters;
import com.aspose.cells.model.ColorFilter;
import com.aspose.cells.model.Top10Filter;
import com.aspose.cells.model.DynamicFilter;
import com.aspose.cells.model.IconFilter;
public class FilterColumn {
  private Integer FieldIndex = null;
  private String FilterType = null;
  private MultipleFilters MultipleFilters = null;
  private ColorFilter ColorFilter = null;
  private List<CustomFilter> CustomFilters = new ArrayList<CustomFilter>();
  private DynamicFilter DynamicFilter = null;
  private IconFilter IconFilter = null;
  private Top10Filter Top10Filter = null;
  private String Visibledropdown = null;
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
	 * getMultipleFilters
	 * Gets MultipleFilters
	 * @return MultipleFilters
	 */
  public MultipleFilters getMultipleFilters() {
    return MultipleFilters;
  }

	/**
	 * setMultipleFilters
	 * Sets MultipleFilters
	 * @param MultipleFilters MultipleFilters
	 */
  public void setMultipleFilters(MultipleFilters MultipleFilters) {
    this.MultipleFilters = MultipleFilters;
  }

  /**
	 * getColorFilter
	 * Gets ColorFilter
	 * @return ColorFilter
	 */
  public ColorFilter getColorFilter() {
    return ColorFilter;
  }

	/**
	 * setColorFilter
	 * Sets ColorFilter
	 * @param ColorFilter ColorFilter
	 */
  public void setColorFilter(ColorFilter ColorFilter) {
    this.ColorFilter = ColorFilter;
  }

  /**
	 * getCustomFilters
	 * Gets List<CustomFilter>
	 * @return CustomFilters
	 */
  public List<CustomFilter> getCustomFilters() {
    return CustomFilters;
  }

	/**
	 * setCustomFilters
	 * Sets List<CustomFilter>
	 * @param CustomFilters List<CustomFilter>
	 */
  public void setCustomFilters(List<CustomFilter> CustomFilters) {
    this.CustomFilters = CustomFilters;
  }

  /**
	 * getDynamicFilter
	 * Gets DynamicFilter
	 * @return DynamicFilter
	 */
  public DynamicFilter getDynamicFilter() {
    return DynamicFilter;
  }

	/**
	 * setDynamicFilter
	 * Sets DynamicFilter
	 * @param DynamicFilter DynamicFilter
	 */
  public void setDynamicFilter(DynamicFilter DynamicFilter) {
    this.DynamicFilter = DynamicFilter;
  }

  /**
	 * getIconFilter
	 * Gets IconFilter
	 * @return IconFilter
	 */
  public IconFilter getIconFilter() {
    return IconFilter;
  }

	/**
	 * setIconFilter
	 * Sets IconFilter
	 * @param IconFilter IconFilter
	 */
  public void setIconFilter(IconFilter IconFilter) {
    this.IconFilter = IconFilter;
  }

  /**
	 * getTop10Filter
	 * Gets Top10Filter
	 * @return Top10Filter
	 */
  public Top10Filter getTop10Filter() {
    return Top10Filter;
  }

	/**
	 * setTop10Filter
	 * Sets Top10Filter
	 * @param Top10Filter Top10Filter
	 */
  public void setTop10Filter(Top10Filter Top10Filter) {
    this.Top10Filter = Top10Filter;
  }

  /**
	 * getVisibledropdown
	 * Gets String
	 * @return Visibledropdown
	 */
  public String getVisibledropdown() {
    return Visibledropdown;
  }

	/**
	 * setVisibledropdown
	 * Sets String
	 * @param Visibledropdown String
	 */
  public void setVisibledropdown(String Visibledropdown) {
    this.Visibledropdown = Visibledropdown;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FilterColumn {\n");
    sb.append("  FieldIndex: ").append(FieldIndex).append("\n");
    sb.append("  FilterType: ").append(FilterType).append("\n");
    sb.append("  MultipleFilters: ").append(MultipleFilters).append("\n");
    sb.append("  ColorFilter: ").append(ColorFilter).append("\n");
    sb.append("  CustomFilters: ").append(CustomFilters).append("\n");
    sb.append("  DynamicFilter: ").append(DynamicFilter).append("\n");
    sb.append("  IconFilter: ").append(IconFilter).append("\n");
    sb.append("  Top10Filter: ").append(Top10Filter).append("\n");
    sb.append("  Visibledropdown: ").append(Visibledropdown).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

