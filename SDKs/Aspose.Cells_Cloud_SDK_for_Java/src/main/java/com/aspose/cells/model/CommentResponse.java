package com.aspose.cells.model;

import com.aspose.cells.model.Comment;
public class CommentResponse {
  private Comment Comment = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getComment
	 * Gets Comment
	 * @return Comment
	 */
  public Comment getComment() {
    return Comment;
  }

	/**
	 * setComment
	 * Sets Comment
	 * @param Comment Comment
	 */
  public void setComment(Comment Comment) {
    this.Comment = Comment;
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
    sb.append("class CommentResponse {\n");
    sb.append("  Comment: ").append(Comment).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

