package com.aspose.cells.model;

import com.aspose.cells.model.Link;
public class CellsDocumentProperty {
  private String Name = null;
  private String Value = null;
  private String BuiltIn = null;
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
	 * getBuiltIn
	 * Gets String
	 * @return BuiltIn
	 */
  public String getBuiltIn() {
    return BuiltIn;
  }

	/**
	 * setBuiltIn
	 * Sets String
	 * @param BuiltIn String
	 */
  public void setBuiltIn(String BuiltIn) {
    this.BuiltIn = BuiltIn;
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
    sb.append("class CellsDocumentProperty {\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Value: ").append(Value).append("\n");
    sb.append("  BuiltIn: ").append(BuiltIn).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

