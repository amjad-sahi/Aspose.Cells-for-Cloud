package com.aspose.cells.model;

public class PasswordRequest {
  private String Password = null;
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
    sb.append("class PasswordRequest {\n");
    sb.append("  Password: ").append(Password).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

