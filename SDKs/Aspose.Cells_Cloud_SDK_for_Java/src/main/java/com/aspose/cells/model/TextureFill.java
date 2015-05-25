package com.aspose.cells.model;

import com.aspose.cells.model.PicFormatOption;
import com.aspose.cells.model.LinkElement;
import com.aspose.cells.model.TilePicOption;
public class TextureFill {
  private String Type = null;
  private Double Transparency = null;
  private Double Scale = null;
  private TilePicOption TilePicOption = null;
  private PicFormatOption PicFormatOption = null;
  private LinkElement Image = null;
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
	 * getTransparency
	 * Gets Double
	 * @return Transparency
	 */
  public Double getTransparency() {
    return Transparency;
  }

	/**
	 * setTransparency
	 * Sets Double
	 * @param Transparency Double
	 */
  public void setTransparency(Double Transparency) {
    this.Transparency = Transparency;
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
	 * getTilePicOption
	 * Gets TilePicOption
	 * @return TilePicOption
	 */
  public TilePicOption getTilePicOption() {
    return TilePicOption;
  }

	/**
	 * setTilePicOption
	 * Sets TilePicOption
	 * @param TilePicOption TilePicOption
	 */
  public void setTilePicOption(TilePicOption TilePicOption) {
    this.TilePicOption = TilePicOption;
  }

  /**
	 * getPicFormatOption
	 * Gets PicFormatOption
	 * @return PicFormatOption
	 */
  public PicFormatOption getPicFormatOption() {
    return PicFormatOption;
  }

	/**
	 * setPicFormatOption
	 * Sets PicFormatOption
	 * @param PicFormatOption PicFormatOption
	 */
  public void setPicFormatOption(PicFormatOption PicFormatOption) {
    this.PicFormatOption = PicFormatOption;
  }

  /**
	 * getImage
	 * Gets LinkElement
	 * @return Image
	 */
  public LinkElement getImage() {
    return Image;
  }

	/**
	 * setImage
	 * Sets LinkElement
	 * @param Image LinkElement
	 */
  public void setImage(LinkElement Image) {
    this.Image = Image;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TextureFill {\n");
    sb.append("  Type: ").append(Type).append("\n");
    sb.append("  Transparency: ").append(Transparency).append("\n");
    sb.append("  Scale: ").append(Scale).append("\n");
    sb.append("  TilePicOption: ").append(TilePicOption).append("\n");
    sb.append("  PicFormatOption: ").append(PicFormatOption).append("\n");
    sb.append("  Image: ").append(Image).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

