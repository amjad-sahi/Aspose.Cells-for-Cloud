package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Color;
import com.aspose.cells.model.LinkElement;
public class Worksheet {
  private List<Link> Links = new ArrayList<Link>();
  private Boolean DisplayRightToLeft = null;
  private Boolean DisplayZeros = null;
  private Integer FirstVisibleColumn = null;
  private Integer FirstVisibleRow = null;
  private String Name = null;
  private Integer Index = null;
  private Boolean IsGridlinesVisible = null;
  private Boolean IsOutlineShown = null;
  private Boolean IsPageBreakPreview = null;
  private Boolean IsVisible = null;
  private Boolean IsProtected = null;
  private Boolean IsRowColumnHeadersVisible = null;
  private Boolean IsRulerVisible = null;
  private Boolean IsSelected = null;
  private Color TabColor = null;
  private Boolean TransitionEntry = null;
  private Boolean TransitionEvaluation = null;
  private String Type = null;
  private String ViewType = null;
  private String VisibilityType = null;
  private Integer Zoom = null;
  private LinkElement Cells = null;
  private LinkElement Charts = null;
  private LinkElement AutoShapes = null;
  private LinkElement OleObjects = null;
  private LinkElement Comments = null;
  private LinkElement Pictures = null;
  private LinkElement MergedCells = null;
  private LinkElement Validations = null;
  private LinkElement ConditionalFormattings = null;
  private LinkElement Hyperlinks = null;
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
	 * getDisplayRightToLeft
	 * Gets Boolean
	 * @return DisplayRightToLeft
	 */
  public Boolean getDisplayRightToLeft() {
    return DisplayRightToLeft;
  }

	/**
	 * setDisplayRightToLeft
	 * Sets Boolean
	 * @param DisplayRightToLeft Boolean
	 */
  public void setDisplayRightToLeft(Boolean DisplayRightToLeft) {
    this.DisplayRightToLeft = DisplayRightToLeft;
  }

  /**
	 * getDisplayZeros
	 * Gets Boolean
	 * @return DisplayZeros
	 */
  public Boolean getDisplayZeros() {
    return DisplayZeros;
  }

	/**
	 * setDisplayZeros
	 * Sets Boolean
	 * @param DisplayZeros Boolean
	 */
  public void setDisplayZeros(Boolean DisplayZeros) {
    this.DisplayZeros = DisplayZeros;
  }

  /**
	 * getFirstVisibleColumn
	 * Gets Integer
	 * @return FirstVisibleColumn
	 */
  public Integer getFirstVisibleColumn() {
    return FirstVisibleColumn;
  }

	/**
	 * setFirstVisibleColumn
	 * Sets Integer
	 * @param FirstVisibleColumn Integer
	 */
  public void setFirstVisibleColumn(Integer FirstVisibleColumn) {
    this.FirstVisibleColumn = FirstVisibleColumn;
  }

  /**
	 * getFirstVisibleRow
	 * Gets Integer
	 * @return FirstVisibleRow
	 */
  public Integer getFirstVisibleRow() {
    return FirstVisibleRow;
  }

	/**
	 * setFirstVisibleRow
	 * Sets Integer
	 * @param FirstVisibleRow Integer
	 */
  public void setFirstVisibleRow(Integer FirstVisibleRow) {
    this.FirstVisibleRow = FirstVisibleRow;
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
	 * getIndex
	 * Gets Integer
	 * @return Index
	 */
  public Integer getIndex() {
    return Index;
  }

	/**
	 * setIndex
	 * Sets Integer
	 * @param Index Integer
	 */
  public void setIndex(Integer Index) {
    this.Index = Index;
  }

  /**
	 * getIsGridlinesVisible
	 * Gets Boolean
	 * @return IsGridlinesVisible
	 */
  public Boolean getIsGridlinesVisible() {
    return IsGridlinesVisible;
  }

	/**
	 * setIsGridlinesVisible
	 * Sets Boolean
	 * @param IsGridlinesVisible Boolean
	 */
  public void setIsGridlinesVisible(Boolean IsGridlinesVisible) {
    this.IsGridlinesVisible = IsGridlinesVisible;
  }

  /**
	 * getIsOutlineShown
	 * Gets Boolean
	 * @return IsOutlineShown
	 */
  public Boolean getIsOutlineShown() {
    return IsOutlineShown;
  }

	/**
	 * setIsOutlineShown
	 * Sets Boolean
	 * @param IsOutlineShown Boolean
	 */
  public void setIsOutlineShown(Boolean IsOutlineShown) {
    this.IsOutlineShown = IsOutlineShown;
  }

  /**
	 * getIsPageBreakPreview
	 * Gets Boolean
	 * @return IsPageBreakPreview
	 */
  public Boolean getIsPageBreakPreview() {
    return IsPageBreakPreview;
  }

	/**
	 * setIsPageBreakPreview
	 * Sets Boolean
	 * @param IsPageBreakPreview Boolean
	 */
  public void setIsPageBreakPreview(Boolean IsPageBreakPreview) {
    this.IsPageBreakPreview = IsPageBreakPreview;
  }

  /**
	 * getIsVisible
	 * Gets Boolean
	 * @return IsVisible
	 */
  public Boolean getIsVisible() {
    return IsVisible;
  }

	/**
	 * setIsVisible
	 * Sets Boolean
	 * @param IsVisible Boolean
	 */
  public void setIsVisible(Boolean IsVisible) {
    this.IsVisible = IsVisible;
  }

  /**
	 * getIsProtected
	 * Gets Boolean
	 * @return IsProtected
	 */
  public Boolean getIsProtected() {
    return IsProtected;
  }

	/**
	 * setIsProtected
	 * Sets Boolean
	 * @param IsProtected Boolean
	 */
  public void setIsProtected(Boolean IsProtected) {
    this.IsProtected = IsProtected;
  }

  /**
	 * getIsRowColumnHeadersVisible
	 * Gets Boolean
	 * @return IsRowColumnHeadersVisible
	 */
  public Boolean getIsRowColumnHeadersVisible() {
    return IsRowColumnHeadersVisible;
  }

	/**
	 * setIsRowColumnHeadersVisible
	 * Sets Boolean
	 * @param IsRowColumnHeadersVisible Boolean
	 */
  public void setIsRowColumnHeadersVisible(Boolean IsRowColumnHeadersVisible) {
    this.IsRowColumnHeadersVisible = IsRowColumnHeadersVisible;
  }

  /**
	 * getIsRulerVisible
	 * Gets Boolean
	 * @return IsRulerVisible
	 */
  public Boolean getIsRulerVisible() {
    return IsRulerVisible;
  }

	/**
	 * setIsRulerVisible
	 * Sets Boolean
	 * @param IsRulerVisible Boolean
	 */
  public void setIsRulerVisible(Boolean IsRulerVisible) {
    this.IsRulerVisible = IsRulerVisible;
  }

  /**
	 * getIsSelected
	 * Gets Boolean
	 * @return IsSelected
	 */
  public Boolean getIsSelected() {
    return IsSelected;
  }

	/**
	 * setIsSelected
	 * Sets Boolean
	 * @param IsSelected Boolean
	 */
  public void setIsSelected(Boolean IsSelected) {
    this.IsSelected = IsSelected;
  }

  /**
	 * getTabColor
	 * Gets Color
	 * @return TabColor
	 */
  public Color getTabColor() {
    return TabColor;
  }

	/**
	 * setTabColor
	 * Sets Color
	 * @param TabColor Color
	 */
  public void setTabColor(Color TabColor) {
    this.TabColor = TabColor;
  }

  /**
	 * getTransitionEntry
	 * Gets Boolean
	 * @return TransitionEntry
	 */
  public Boolean getTransitionEntry() {
    return TransitionEntry;
  }

	/**
	 * setTransitionEntry
	 * Sets Boolean
	 * @param TransitionEntry Boolean
	 */
  public void setTransitionEntry(Boolean TransitionEntry) {
    this.TransitionEntry = TransitionEntry;
  }

  /**
	 * getTransitionEvaluation
	 * Gets Boolean
	 * @return TransitionEvaluation
	 */
  public Boolean getTransitionEvaluation() {
    return TransitionEvaluation;
  }

	/**
	 * setTransitionEvaluation
	 * Sets Boolean
	 * @param TransitionEvaluation Boolean
	 */
  public void setTransitionEvaluation(Boolean TransitionEvaluation) {
    this.TransitionEvaluation = TransitionEvaluation;
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
	 * getViewType
	 * Gets String
	 * @return ViewType
	 */
  public String getViewType() {
    return ViewType;
  }

	/**
	 * setViewType
	 * Sets String
	 * @param ViewType String
	 */
  public void setViewType(String ViewType) {
    this.ViewType = ViewType;
  }

  /**
	 * getVisibilityType
	 * Gets String
	 * @return VisibilityType
	 */
  public String getVisibilityType() {
    return VisibilityType;
  }

	/**
	 * setVisibilityType
	 * Sets String
	 * @param VisibilityType String
	 */
  public void setVisibilityType(String VisibilityType) {
    this.VisibilityType = VisibilityType;
  }

  /**
	 * getZoom
	 * Gets Integer
	 * @return Zoom
	 */
  public Integer getZoom() {
    return Zoom;
  }

	/**
	 * setZoom
	 * Sets Integer
	 * @param Zoom Integer
	 */
  public void setZoom(Integer Zoom) {
    this.Zoom = Zoom;
  }

  /**
	 * getCells
	 * Gets LinkElement
	 * @return Cells
	 */
  public LinkElement getCells() {
    return Cells;
  }

	/**
	 * setCells
	 * Sets LinkElement
	 * @param Cells LinkElement
	 */
  public void setCells(LinkElement Cells) {
    this.Cells = Cells;
  }

  /**
	 * getCharts
	 * Gets LinkElement
	 * @return Charts
	 */
  public LinkElement getCharts() {
    return Charts;
  }

	/**
	 * setCharts
	 * Sets LinkElement
	 * @param Charts LinkElement
	 */
  public void setCharts(LinkElement Charts) {
    this.Charts = Charts;
  }

  /**
	 * getAutoShapes
	 * Gets LinkElement
	 * @return AutoShapes
	 */
  public LinkElement getAutoShapes() {
    return AutoShapes;
  }

	/**
	 * setAutoShapes
	 * Sets LinkElement
	 * @param AutoShapes LinkElement
	 */
  public void setAutoShapes(LinkElement AutoShapes) {
    this.AutoShapes = AutoShapes;
  }

  /**
	 * getOleObjects
	 * Gets LinkElement
	 * @return OleObjects
	 */
  public LinkElement getOleObjects() {
    return OleObjects;
  }

	/**
	 * setOleObjects
	 * Sets LinkElement
	 * @param OleObjects LinkElement
	 */
  public void setOleObjects(LinkElement OleObjects) {
    this.OleObjects = OleObjects;
  }

  /**
	 * getComments
	 * Gets LinkElement
	 * @return Comments
	 */
  public LinkElement getComments() {
    return Comments;
  }

	/**
	 * setComments
	 * Sets LinkElement
	 * @param Comments LinkElement
	 */
  public void setComments(LinkElement Comments) {
    this.Comments = Comments;
  }

  /**
	 * getPictures
	 * Gets LinkElement
	 * @return Pictures
	 */
  public LinkElement getPictures() {
    return Pictures;
  }

	/**
	 * setPictures
	 * Sets LinkElement
	 * @param Pictures LinkElement
	 */
  public void setPictures(LinkElement Pictures) {
    this.Pictures = Pictures;
  }

  /**
	 * getMergedCells
	 * Gets LinkElement
	 * @return MergedCells
	 */
  public LinkElement getMergedCells() {
    return MergedCells;
  }

	/**
	 * setMergedCells
	 * Sets LinkElement
	 * @param MergedCells LinkElement
	 */
  public void setMergedCells(LinkElement MergedCells) {
    this.MergedCells = MergedCells;
  }

  /**
	 * getValidations
	 * Gets LinkElement
	 * @return Validations
	 */
  public LinkElement getValidations() {
    return Validations;
  }

	/**
	 * setValidations
	 * Sets LinkElement
	 * @param Validations LinkElement
	 */
  public void setValidations(LinkElement Validations) {
    this.Validations = Validations;
  }

  /**
	 * getConditionalFormattings
	 * Gets LinkElement
	 * @return ConditionalFormattings
	 */
  public LinkElement getConditionalFormattings() {
    return ConditionalFormattings;
  }

	/**
	 * setConditionalFormattings
	 * Sets LinkElement
	 * @param ConditionalFormattings LinkElement
	 */
  public void setConditionalFormattings(LinkElement ConditionalFormattings) {
    this.ConditionalFormattings = ConditionalFormattings;
  }

  /**
	 * getHyperlinks
	 * Gets LinkElement
	 * @return Hyperlinks
	 */
  public LinkElement getHyperlinks() {
    return Hyperlinks;
  }

	/**
	 * setHyperlinks
	 * Sets LinkElement
	 * @param Hyperlinks LinkElement
	 */
  public void setHyperlinks(LinkElement Hyperlinks) {
    this.Hyperlinks = Hyperlinks;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Worksheet {\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("  DisplayRightToLeft: ").append(DisplayRightToLeft).append("\n");
    sb.append("  DisplayZeros: ").append(DisplayZeros).append("\n");
    sb.append("  FirstVisibleColumn: ").append(FirstVisibleColumn).append("\n");
    sb.append("  FirstVisibleRow: ").append(FirstVisibleRow).append("\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Index: ").append(Index).append("\n");
    sb.append("  IsGridlinesVisible: ").append(IsGridlinesVisible).append("\n");
    sb.append("  IsOutlineShown: ").append(IsOutlineShown).append("\n");
    sb.append("  IsPageBreakPreview: ").append(IsPageBreakPreview).append("\n");
    sb.append("  IsVisible: ").append(IsVisible).append("\n");
    sb.append("  IsProtected: ").append(IsProtected).append("\n");
    sb.append("  IsRowColumnHeadersVisible: ").append(IsRowColumnHeadersVisible).append("\n");
    sb.append("  IsRulerVisible: ").append(IsRulerVisible).append("\n");
    sb.append("  IsSelected: ").append(IsSelected).append("\n");
    sb.append("  TabColor: ").append(TabColor).append("\n");
    sb.append("  TransitionEntry: ").append(TransitionEntry).append("\n");
    sb.append("  TransitionEvaluation: ").append(TransitionEvaluation).append("\n");
    sb.append("  Type: ").append(Type).append("\n");
    sb.append("  ViewType: ").append(ViewType).append("\n");
    sb.append("  VisibilityType: ").append(VisibilityType).append("\n");
    sb.append("  Zoom: ").append(Zoom).append("\n");
    sb.append("  Cells: ").append(Cells).append("\n");
    sb.append("  Charts: ").append(Charts).append("\n");
    sb.append("  AutoShapes: ").append(AutoShapes).append("\n");
    sb.append("  OleObjects: ").append(OleObjects).append("\n");
    sb.append("  Comments: ").append(Comments).append("\n");
    sb.append("  Pictures: ").append(Pictures).append("\n");
    sb.append("  MergedCells: ").append(MergedCells).append("\n");
    sb.append("  Validations: ").append(Validations).append("\n");
    sb.append("  ConditionalFormattings: ").append(ConditionalFormattings).append("\n");
    sb.append("  Hyperlinks: ").append(Hyperlinks).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

