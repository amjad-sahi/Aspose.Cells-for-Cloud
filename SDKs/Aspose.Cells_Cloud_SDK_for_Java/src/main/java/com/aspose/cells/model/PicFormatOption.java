package com.aspose.cells.model;

public class PicFormatOption {
  private String Type = null;
  private Double Scale = null;
  private Double Left = null;
  private Double Right = null;
  private Double Top = null;
  private Double Bottom = null;
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
	 * getScale
	 * Gets Double
	 * @return Scale
	 */
  public Double getScale() {
    return Scale;
  }

	/**
	 * setScale
	 * Sets Double
	 * @param Scale Double
	 */
  public void setScale(Double Scale) {
    this.Scale = Scale;
  }

  /**
	 * getLeft
	 * Gets Double
	 * @return Left
	 */
  public Double getLeft() {
    return Left;
  }

	/**
	 * setLeft
	 * Sets Double
	 * @param Left Double
	 */
  public void setLeft(Double Left) {
    this.Left = Left;
  }

  /**
	 * getRight
	 * Gets Double
	 * @return Right
	 */
  public Double getRight() {
    return Right;
  }

	/**
	 * setRight
	 * Sets Double
	 * @param Right Double
	 */
  public void setRight(Double Right) {
    this.Right = Right;
  }

  /**
	 * getTop
	 * Gets Double
	 * @return Top
	 */
  public Double getTop() {
    return Top;
  }

	/**
	 * setTop
	 * Sets Double
	 * @param Top Double
	 */
  public void setTop(Double Top) {
    this.Top = Top;
  }

  /**
	 * getBottom
	 * Gets Double
	 * @return Bottom
	 */
  public Double getBottom() {
    return Bottom;
  }

	/**
	 * setBottom
	 * Sets Double
	 * @param Bottom Double
	 */
  public void setBottom(Double Bottom) {
    this.Bottom = Bottom;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PicFormatOption {\n");
    sb.append("  Type: ").append(Type).append("\n");
    sb.append("  Scale: ").append(Scale).append("\n");
    sb.append("  Left: ").append(Left).append("\n");
    sb.append("  Right: ").append(Right).append("\n");
    sb.append("  Top: ").append(Top).append("\n");
    sb.append("  Bottom: ").append(Bottom).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

