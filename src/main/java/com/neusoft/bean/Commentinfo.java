package com.neusoft.bean;

public class Commentinfo {
  private Long cid;
  private Long userid;
  private String content;
  private java.sql.Timestamp createtime;
  private String chtml;
  private Long articleid;
  private Long fabulous;
  private Long tread;

  public Long getFabulous() {
    return fabulous;
  }

  public void setFabulous(Long fabulous) {
    this.fabulous = fabulous;
  }

  public Long getTread() {
    return tread;
  }

  public void setTread(Long tread) {
    this.tread = tread;
  }

  public String getChtml() {
    return chtml;
  }

  public void setChtml(String chtml) {
    this.chtml = chtml;
  }

  public Long getCid() {
    return cid;
  }

  public void setCid(Long cid) {
    this.cid = cid;
  }

  public Long getUserid() {
    return userid;
  }

  public void setUserid(Long userid) {
    this.userid = userid;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public java.sql.Timestamp getCreatetime() {
    return createtime;
  }

  public void setCreatetime(java.sql.Timestamp createtime) {
    this.createtime = createtime;
  }


  public Long getArticleid() {
    return articleid;
  }

  public void setArticleid(Long articleid) {
    this.articleid = articleid;
  }
}
