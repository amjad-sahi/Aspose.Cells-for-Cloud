package com.aspose.cells.model;

public class WorkbookEncryptionRequest {
  private String EncryptionType = null;
  private Integer KeyLength = null;
  private String Password = null;
  /**
	 * getEncryptionType
	 * Gets String
	 * @return EncryptionType
	 */
  public String getEncryptionType() {
    return EncryptionType;
  }

	/**
	 * setEncryptionType
	 * Sets String
	 * @param EncryptionType String
	 */
  public void setEncryptionType(String EncryptionType) {
    this.EncryptionType = EncryptionType;
  }

  /**
	 * getKeyLength
	 * Gets Integer
	 * @return KeyLength
	 */
  public Integer getKeyLength() {
    return KeyLength;
  }

	/**
	 * setKeyLength
	 * Sets Integer
	 * @param KeyLength Integer
	 */
  public void setKeyLength(Integer KeyLength) {
    this.KeyLength = KeyLength;
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
    sb.append("class WorkbookEncryptionRequest {\n");
    sb.append("  EncryptionType: ").append(EncryptionType).append("\n");
    sb.append("  KeyLength: ").append(KeyLength).append("\n");
    sb.append("  Password: ").append(Password).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

