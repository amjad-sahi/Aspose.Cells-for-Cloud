package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class Validations {
  private Integer Count = null;
  private List<LinkElement> ValidationList = new ArrayList<LinkElement>();
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
	 * getValidationList
	 * Gets List<LinkElement>
	 * @return ValidationList
	 */
  public List<LinkElement> getValidationList() {
    return ValidationList;
  }

	/**
	 * setValidationList
	 * Sets List<LinkElement>
	 * @param ValidationList List<LinkElement>
	 */
  public void setValidationList(List<LinkElement> ValidationList) {
    this.ValidationList = ValidationList;
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
    sb.append("class Validations {\n");
    sb.append("  Count: ").append(Count).append("\n");
    sb.append("  ValidationList: ").append(ValidationList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

