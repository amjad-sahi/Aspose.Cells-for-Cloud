package com.aspose.cells.model;

public class SaveOptions {
  private String CachedFileFolder = null;
  private Boolean ClearData = null;
  private Boolean CreateDirectory = null;
  private Boolean EnableHTTPCompression = null;
  private Boolean RefreshChartCache = null;
  private Boolean SortNames = null;
  private Boolean ValidateMergedAreas = null;
  /**
	 * getCachedFileFolder
	 * Gets String
	 * @return CachedFileFolder
	 */
  public String getCachedFileFolder() {
    return CachedFileFolder;
  }

	/**
	 * setCachedFileFolder
	 * Sets String
	 * @param CachedFileFolder String
	 */
  public void setCachedFileFolder(String CachedFileFolder) {
    this.CachedFileFolder = CachedFileFolder;
  }

  /**
	 * getClearData
	 * Gets Boolean
	 * @return ClearData
	 */
  public Boolean getClearData() {
    return ClearData;
  }

	/**
	 * setClearData
	 * Sets Boolean
	 * @param ClearData Boolean
	 */
  public void setClearData(Boolean ClearData) {
    this.ClearData = ClearData;
  }

  /**
	 * getCreateDirectory
	 * Gets Boolean
	 * @return CreateDirectory
	 */
  public Boolean getCreateDirectory() {
    return CreateDirectory;
  }

	/**
	 * setCreateDirectory
	 * Sets Boolean
	 * @param CreateDirectory Boolean
	 */
  public void setCreateDirectory(Boolean CreateDirectory) {
    this.CreateDirectory = CreateDirectory;
  }

  /**
	 * getEnableHTTPCompression
	 * Gets Boolean
	 * @return EnableHTTPCompression
	 */
  public Boolean getEnableHTTPCompression() {
    return EnableHTTPCompression;
  }

	/**
	 * setEnableHTTPCompression
	 * Sets Boolean
	 * @param EnableHTTPCompression Boolean
	 */
  public void setEnableHTTPCompression(Boolean EnableHTTPCompression) {
    this.EnableHTTPCompression = EnableHTTPCompression;
  }

  /**
	 * getRefreshChartCache
	 * Gets Boolean
	 * @return RefreshChartCache
	 */
  public Boolean getRefreshChartCache() {
    return RefreshChartCache;
  }

	/**
	 * setRefreshChartCache
	 * Sets Boolean
	 * @param RefreshChartCache Boolean
	 */
  public void setRefreshChartCache(Boolean RefreshChartCache) {
    this.RefreshChartCache = RefreshChartCache;
  }

  /**
	 * getSortNames
	 * Gets Boolean
	 * @return SortNames
	 */
  public Boolean getSortNames() {
    return SortNames;
  }

	/**
	 * setSortNames
	 * Sets Boolean
	 * @param SortNames Boolean
	 */
  public void setSortNames(Boolean SortNames) {
    this.SortNames = SortNames;
  }

  /**
	 * getValidateMergedAreas
	 * Gets Boolean
	 * @return ValidateMergedAreas
	 */
  public Boolean getValidateMergedAreas() {
    return ValidateMergedAreas;
  }

	/**
	 * setValidateMergedAreas
	 * Sets Boolean
	 * @param ValidateMergedAreas Boolean
	 */
  public void setValidateMergedAreas(Boolean ValidateMergedAreas) {
    this.ValidateMergedAreas = ValidateMergedAreas;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SaveOptions {\n");
    sb.append("  CachedFileFolder: ").append(CachedFileFolder).append("\n");
    sb.append("  ClearData: ").append(ClearData).append("\n");
    sb.append("  CreateDirectory: ").append(CreateDirectory).append("\n");
    sb.append("  EnableHTTPCompression: ").append(EnableHTTPCompression).append("\n");
    sb.append("  RefreshChartCache: ").append(RefreshChartCache).append("\n");
    sb.append("  SortNames: ").append(SortNames).append("\n");
    sb.append("  ValidateMergedAreas: ").append(ValidateMergedAreas).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

