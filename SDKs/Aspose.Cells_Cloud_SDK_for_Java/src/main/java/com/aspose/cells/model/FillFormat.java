package com.aspose.cells.model;

import com.aspose.cells.model.TextureFill;
import com.aspose.cells.model.PatternFill;
import com.aspose.cells.model.GradientFill;
import com.aspose.cells.model.SolidFill;
public class FillFormat {
  private String Type = null;
  private SolidFill SolidFill = null;
  private PatternFill PatternFill = null;
  private TextureFill TextureFill = null;
  private GradientFill GradientFill = null;
  private String ImageData = null;
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
	 * getSolidFill
	 * Gets SolidFill
	 * @return SolidFill
	 */
  public SolidFill getSolidFill() {
    return SolidFill;
  }

	/**
	 * setSolidFill
	 * Sets SolidFill
	 * @param SolidFill SolidFill
	 */
  public void setSolidFill(SolidFill SolidFill) {
    this.SolidFill = SolidFill;
  }

  /**
	 * getPatternFill
	 * Gets PatternFill
	 * @return PatternFill
	 */
  public PatternFill getPatternFill() {
    return PatternFill;
  }

	/**
	 * setPatternFill
	 * Sets PatternFill
	 * @param PatternFill PatternFill
	 */
  public void setPatternFill(PatternFill PatternFill) {
    this.PatternFill = PatternFill;
  }

  /**
	 * getTextureFill
	 * Gets TextureFill
	 * @return TextureFill
	 */
  public TextureFill getTextureFill() {
    return TextureFill;
  }

	/**
	 * setTextureFill
	 * Sets TextureFill
	 * @param TextureFill TextureFill
	 */
  public void setTextureFill(TextureFill TextureFill) {
    this.TextureFill = TextureFill;
  }

  /**
	 * getGradientFill
	 * Gets GradientFill
	 * @return GradientFill
	 */
  public GradientFill getGradientFill() {
    return GradientFill;
  }

	/**
	 * setGradientFill
	 * Sets GradientFill
	 * @param GradientFill GradientFill
	 */
  public void setGradientFill(GradientFill GradientFill) {
    this.GradientFill = GradientFill;
  }

  /**
	 * getImageData
	 * Gets String
	 * @return ImageData
	 */
  public String getImageData() {
    return ImageData;
  }

	/**
	 * setImageData
	 * Sets String
	 * @param ImageData String
	 */
  public void setImageData(String ImageData) {
    this.ImageData = ImageData;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FillFormat {\n");
    sb.append("  Type: ").append(Type).append("\n");
    sb.append("  SolidFill: ").append(SolidFill).append("\n");
    sb.append("  PatternFill: ").append(PatternFill).append("\n");
    sb.append("  TextureFill: ").append(TextureFill).append("\n");
    sb.append("  GradientFill: ").append(GradientFill).append("\n");
    sb.append("  ImageData: ").append(ImageData).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

