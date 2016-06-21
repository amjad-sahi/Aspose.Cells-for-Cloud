package com.aspose.cells.model;

public class DateTimeGroupItem {
  private String DateTimeGroupingType = null;
  private Integer Day = null;
  private Integer Hour = null;
  private Integer Minute = null;
  private Integer Month = null;
  private Integer Second = null;
  private Integer Year = null;
  /**
	 * getDateTimeGroupingType
	 * Gets String
	 * @return DateTimeGroupingType
	 */
  public String getDateTimeGroupingType() {
    return DateTimeGroupingType;
  }

	/**
	 * setDateTimeGroupingType
	 * Sets String
	 * @param DateTimeGroupingType String
	 */
  public void setDateTimeGroupingType(String DateTimeGroupingType) {
    this.DateTimeGroupingType = DateTimeGroupingType;
  }

  /**
	 * getDay
	 * Gets Integer
	 * @return Day
	 */
  public Integer getDay() {
    return Day;
  }

	/**
	 * setDay
	 * Sets Integer
	 * @param Day Integer
	 */
  public void setDay(Integer Day) {
    this.Day = Day;
  }

  /**
	 * getHour
	 * Gets Integer
	 * @return Hour
	 */
  public Integer getHour() {
    return Hour;
  }

	/**
	 * setHour
	 * Sets Integer
	 * @param Hour Integer
	 */
  public void setHour(Integer Hour) {
    this.Hour = Hour;
  }

  /**
	 * getMinute
	 * Gets Integer
	 * @return Minute
	 */
  public Integer getMinute() {
    return Minute;
  }

	/**
	 * setMinute
	 * Sets Integer
	 * @param Minute Integer
	 */
  public void setMinute(Integer Minute) {
    this.Minute = Minute;
  }

  /**
	 * getMonth
	 * Gets Integer
	 * @return Month
	 */
  public Integer getMonth() {
    return Month;
  }

	/**
	 * setMonth
	 * Sets Integer
	 * @param Month Integer
	 */
  public void setMonth(Integer Month) {
    this.Month = Month;
  }

  /**
	 * getSecond
	 * Gets Integer
	 * @return Second
	 */
  public Integer getSecond() {
    return Second;
  }

	/**
	 * setSecond
	 * Sets Integer
	 * @param Second Integer
	 */
  public void setSecond(Integer Second) {
    this.Second = Second;
  }

  /**
	 * getYear
	 * Gets Integer
	 * @return Year
	 */
  public Integer getYear() {
    return Year;
  }

	/**
	 * setYear
	 * Sets Integer
	 * @param Year Integer
	 */
  public void setYear(Integer Year) {
    this.Year = Year;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DateTimeGroupItem {\n");
    sb.append("  DateTimeGroupingType: ").append(DateTimeGroupingType).append("\n");
    sb.append("  Day: ").append(Day).append("\n");
    sb.append("  Hour: ").append(Hour).append("\n");
    sb.append("  Minute: ").append(Minute).append("\n");
    sb.append("  Month: ").append(Month).append("\n");
    sb.append("  Second: ").append(Second).append("\n");
    sb.append("  Year: ").append(Year).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

