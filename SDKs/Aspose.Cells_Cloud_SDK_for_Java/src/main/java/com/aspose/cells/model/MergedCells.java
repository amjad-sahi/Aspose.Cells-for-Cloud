package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class MergedCells {
  private Integer Count = null;
  private List<LinkElement> MergedCellList = new ArrayList<LinkElement>();
  private Link link = null;
  /**
	 * getCount
	 * Gets Integer
	 * @return Count
	 */
  public Integer getCount() {
    return Count;
  }

	/**
	 * setCount
	 * Sets Integer
	 * @param Count Integer
	 */
  public void setCount(Integer Count) {
    this.Count = Count;
  }

  /**
	 * getMergedCellList
	 * Gets List<LinkElement>
	 * @return MergedCellList
	 */
  public List<LinkElement> getMergedCellList() {
    return MergedCellList;
  }

	/**
	 * setMergedCellList
	 * Sets List<LinkElement>
	 * @param MergedCellList List<LinkElement>
	 */
  public void setMergedCellList(List<LinkElement> MergedCellList) {
    this.MergedCellList = MergedCellList;
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
    sb.append("class MergedCells {\n");
    sb.append("  Count: ").append(Count).append("\n");
    sb.append("  MergedCellList: ").append(MergedCellList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

