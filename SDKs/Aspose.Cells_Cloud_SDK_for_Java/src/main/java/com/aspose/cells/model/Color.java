package com.aspose.cells.model;

public class Color {
  private String A = null;
  private String R = null;
  private String G = null;
  private String B = null;
  /**
	 * getA
	 * Gets String
	 * @return A
	 */
  public String getA() {
    return A;
  }

	/**
	 * setA
	 * Sets String
	 * @param A String
	 */
  public void setA(String A) {
    this.A = A;
  }

  /**
	 * getR
	 * Gets String
	 * @return R
	 */
  public String getR() {
    return R;
  }

	/**
	 * setR
	 * Sets String
	 * @param R String
	 */
  public void setR(String R) {
    this.R = R;
  }

  /**
	 * getG
	 * Gets String
	 * @return G
	 */
  public String getG() {
    return G;
  }

	/**
	 * setG
	 * Sets String
	 * @param G String
	 */
  public void setG(String G) {
    this.G = G;
  }

  /**
	 * getB
	 * Gets String
	 * @return B
	 */
  public String getB() {
    return B;
  }

	/**
	 * setB
	 * Sets String
	 * @param B String
	 */
  public void setB(String B) {
    this.B = B;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Color {\n");
    sb.append("  A: ").append(A).append("\n");
    sb.append("  R: ").append(R).append("\n");
    sb.append("  G: ").append(G).append("\n");
    sb.append("  B: ").append(B).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

