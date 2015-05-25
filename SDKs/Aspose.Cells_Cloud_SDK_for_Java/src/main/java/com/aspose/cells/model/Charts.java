package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class Charts {
  private List<LinkElement> ChartList = new ArrayList<LinkElement>();
  private Link link = null;
  /**
	 * getChartList
	 * Gets List<LinkElement>
	 * @return ChartList
	 */
  public List<LinkElement> getChartList() {
    return ChartList;
  }

	/**
	 * setChartList
	 * Sets List<LinkElement>
	 * @param ChartList List<LinkElement>
	 */
  public void setChartList(List<LinkElement> ChartList) {
    this.ChartList = ChartList;
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
    sb.append("class Charts {\n");
    sb.append("  ChartList: ").append(ChartList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

