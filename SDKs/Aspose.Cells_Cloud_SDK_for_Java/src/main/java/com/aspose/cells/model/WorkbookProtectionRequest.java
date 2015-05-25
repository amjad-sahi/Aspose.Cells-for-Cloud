package com.aspose.cells.model;

public class WorkbookProtectionRequest {
  private String ProtectionType = null;
  private String Password = null;
  /**
	 * getProtectionType
	 * Gets String
	 * @return ProtectionType
	 */
  public String getProtectionType() {
    return ProtectionType;
  }

	/**
	 * setProtectionType
	 * Sets String
	 * @param ProtectionType String
	 */
  public void setProtectionType(String ProtectionType) {
    this.ProtectionType = ProtectionType;
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
    sb.append("class WorkbookProtectionRequest {\n");
    sb.append("  ProtectionType: ").append(ProtectionType).append("\n");
    sb.append("  Password: ").append(Password).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

