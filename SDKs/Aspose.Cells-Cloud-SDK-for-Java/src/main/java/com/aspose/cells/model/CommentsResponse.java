package com.aspose.cells.model;

import com.aspose.cells.model.Comments;
public class CommentsResponse {
  private Comments Comments = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getComments
	 * Gets Comments
	 * @return Comments
	 */
  public Comments getComments() {
    return Comments;
  }

	/**
	 * setComments
	 * Sets Comments
	 * @param Comments Comments
	 */
  public void setComments(Comments Comments) {
    this.Comments = Comments;
  }

  /**
	 * getCode
	 * Gets String
	 * @return Code
	 */
  public String getCode() {
    return Code;
  }

	/**
	 * setCode
	 * Sets String
	 * @param Code String
	 */
  public void setCode(String Code) {
    this.Code = Code;
  }

  /**
	 * getStatus
	 * Gets String
	 * @return Status
	 */
  public String getStatus() {
    return Status;
  }

	/**
	 * setStatus
	 * Sets String
	 * @param Status String
	 */
  public void setStatus(String Status) {
    this.Status = Status;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CommentsResponse {\n");
    sb.append("  Comments: ").append(Comments).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

