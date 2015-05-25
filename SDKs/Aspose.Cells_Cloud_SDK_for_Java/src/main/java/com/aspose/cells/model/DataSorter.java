package com.aspose.cells.model;

import java.util.*;
public class DataSorter {
  private String CaseSensitive = null;
  private String HasHeaders = null;
  private List<SortKey> KeyList = new ArrayList<SortKey>();
  private String SortLeftToRight = null;
  /**
	 * getCaseSensitive
	 * Gets String
	 * @return CaseSensitive
	 */
  public String getCaseSensitive() {
    return CaseSensitive;
  }

	/**
	 * setCaseSensitive
	 * Sets String
	 * @param CaseSensitive String
	 */
  public void setCaseSensitive(String CaseSensitive) {
    this.CaseSensitive = CaseSensitive;
  }

  /**
	 * getHasHeaders
	 * Gets String
	 * @return HasHeaders
	 */
  public String getHasHeaders() {
    return HasHeaders;
  }

	/**
	 * setHasHeaders
	 * Sets String
	 * @param HasHeaders String
	 */
  public void setHasHeaders(String HasHeaders) {
    this.HasHeaders = HasHeaders;
  }

  /**
	 * getKeyList
	 * Gets List<SortKey>
	 * @return KeyList
	 */
  public List<SortKey> getKeyList() {
    return KeyList;
  }

	/**
	 * setKeyList
	 * Sets List<SortKey>
	 * @param KeyList List<SortKey>
	 */
  public void setKeyList(List<SortKey> KeyList) {
    this.KeyList = KeyList;
  }

  /**
	 * getSortLeftToRight
	 * Gets String
	 * @return SortLeftToRight
	 */
  public String getSortLeftToRight() {
    return SortLeftToRight;
  }

	/**
	 * setSortLeftToRight
	 * Sets String
	 * @param SortLeftToRight String
	 */
  public void setSortLeftToRight(String SortLeftToRight) {
    this.SortLeftToRight = SortLeftToRight;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DataSorter {\n");
    sb.append("  CaseSensitive: ").append(CaseSensitive).append("\n");
    sb.append("  HasHeaders: ").append(HasHeaders).append("\n");
    sb.append("  KeyList: ").append(KeyList).append("\n");
    sb.append("  SortLeftToRight: ").append(SortLeftToRight).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

