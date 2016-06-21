package com.aspose.cells.model;

import java.util.*;
public class GradientFill {
  private String FillType = null;
  private String DirectionType = null;
  private Float Angle = null;
  private List<GradientFillStop> GradientStops = new ArrayList<GradientFillStop>();
  /**
	 * getFillType
	 * Gets String
	 * @return FillType
	 */
  public String getFillType() {
    return FillType;
  }

	/**
	 * setFillType
	 * Sets String
	 * @param FillType String
	 */
  public void setFillType(String FillType) {
    this.FillType = FillType;
  }

  /**
	 * getDirectionType
	 * Gets String
	 * @return DirectionType
	 */
  public String getDirectionType() {
    return DirectionType;
  }

	/**
	 * setDirectionType
	 * Sets String
	 * @param DirectionType String
	 */
  public void setDirectionType(String DirectionType) {
    this.DirectionType = DirectionType;
  }

  /**
	 * getAngle
	 * Gets Float
	 * @return Angle
	 */
  public Float getAngle() {
    return Angle;
  }

	/**
	 * setAngle
	 * Sets Float
	 * @param Angle Float
	 */
  public void setAngle(Float Angle) {
    this.Angle = Angle;
  }

  /**
	 * getGradientStops
	 * Gets List<GradientFillStop>
	 * @return GradientStops
	 */
  public List<GradientFillStop> getGradientStops() {
    return GradientStops;
  }

	/**
	 * setGradientStops
	 * Sets List<GradientFillStop>
	 * @param GradientStops List<GradientFillStop>
	 */
  public void setGradientStops(List<GradientFillStop> GradientStops) {
    this.GradientStops = GradientStops;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GradientFill {\n");
    sb.append("  FillType: ").append(FillType).append("\n");
    sb.append("  DirectionType: ").append(DirectionType).append("\n");
    sb.append("  Angle: ").append(Angle).append("\n");
    sb.append("  GradientStops: ").append(GradientStops).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

