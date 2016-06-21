package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.LinkElement;
public class Workbook {
  private String FileName = null;
  private List<Link> Links = new ArrayList<Link>();
  private LinkElement Worksheets = null;
  private LinkElement DefaultStyle = null;
  private LinkElement DocumentProperties = null;
  private LinkElement Names = null;
  private String IsWriteProtected = null;
  private String IsProtected = null;
  private String IsEncryption = null;
  private String Password = null;
  /**
	 * getFileName
	 * Gets String
	 * @return FileName
	 */
  public String getFileName() {
    return FileName;
  }

	/**
	 * setFileName
	 * Sets String
	 * @param FileName String
	 */
  public void setFileName(String FileName) {
    this.FileName = FileName;
  }

  /**
	 * getLinks
	 * Gets List<Link>
	 * @return Links
	 */
  public List<Link> getLinks() {
    return Links;
  }

	/**
	 * setLinks
	 * Sets List<Link>
	 * @param Links List<Link>
	 */
  public void setLinks(List<Link> Links) {
    this.Links = Links;
  }

  /**
	 * getWorksheets
	 * Gets LinkElement
	 * @return Worksheets
	 */
  public LinkElement getWorksheets() {
    return Worksheets;
  }

	/**
	 * setWorksheets
	 * Sets LinkElement
	 * @param Worksheets LinkElement
	 */
  public void setWorksheets(LinkElement Worksheets) {
    this.Worksheets = Worksheets;
  }

  /**
	 * getDefaultStyle
	 * Gets LinkElement
	 * @return DefaultStyle
	 */
  public LinkElement getDefaultStyle() {
    return DefaultStyle;
  }

	/**
	 * setDefaultStyle
	 * Sets LinkElement
	 * @param DefaultStyle LinkElement
	 */
  public void setDefaultStyle(LinkElement DefaultStyle) {
    this.DefaultStyle = DefaultStyle;
  }

  /**
	 * getDocumentProperties
	 * Gets LinkElement
	 * @return DocumentProperties
	 */
  public LinkElement getDocumentProperties() {
    return DocumentProperties;
  }

	/**
	 * setDocumentProperties
	 * Sets LinkElement
	 * @param DocumentProperties LinkElement
	 */
  public void setDocumentProperties(LinkElement DocumentProperties) {
    this.DocumentProperties = DocumentProperties;
  }

  /**
	 * getNames
	 * Gets LinkElement
	 * @return Names
	 */
  public LinkElement getNames() {
    return Names;
  }

	/**
	 * setNames
	 * Sets LinkElement
	 * @param Names LinkElement
	 */
  public void setNames(LinkElement Names) {
    this.Names = Names;
  }

  /**
	 * getIsWriteProtected
	 * Gets String
	 * @return IsWriteProtected
	 */
  public String getIsWriteProtected() {
    return IsWriteProtected;
  }

	/**
	 * setIsWriteProtected
	 * Sets String
	 * @param IsWriteProtected String
	 */
  public void setIsWriteProtected(String IsWriteProtected) {
    this.IsWriteProtected = IsWriteProtected;
  }

  /**
	 * getIsProtected
	 * Gets String
	 * @return IsProtected
	 */
  public String getIsProtected() {
    return IsProtected;
  }

	/**
	 * setIsProtected
	 * Sets String
	 * @param IsProtected String
	 */
  public void setIsProtected(String IsProtected) {
    this.IsProtected = IsProtected;
  }

  /**
	 * getIsEncryption
	 * Gets String
	 * @return IsEncryption
	 */
  public String getIsEncryption() {
    return IsEncryption;
  }

	/**
	 * setIsEncryption
	 * Sets String
	 * @param IsEncryption String
	 */
  public void setIsEncryption(String IsEncryption) {
    this.IsEncryption = IsEncryption;
  }

  /**
	 * getPassword
	 * Gets String
	 * @return Password
	 */
  public String getPassword() {
    return Password;
  }

	/**
	 * setPassword
	 * Sets String
	 * @param Password String
	 */
  public void setPassword(String Password) {
    this.Password = Password;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Workbook {\n");
    sb.append("  FileName: ").append(FileName).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("  Worksheets: ").append(Worksheets).append("\n");
    sb.append("  DefaultStyle: ").append(DefaultStyle).append("\n");
    sb.append("  DocumentProperties: ").append(DocumentProperties).append("\n");
    sb.append("  Names: ").append(Names).append("\n");
    sb.append("  IsWriteProtected: ").append(IsWriteProtected).append("\n");
    sb.append("  IsProtected: ").append(IsProtected).append("\n");
    sb.append("  IsEncryption: ").append(IsEncryption).append("\n");
    sb.append("  Password: ").append(Password).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

