package com.gaobo.pojo;

import java.util.List;

public class Message {

  private String alert;         //某某人进入了聊天室/退出聊天室

  private List<String> names;   //储存所有聊天人姓名

  private String sendMsg;       //发消息的内容

  private String from;          //发消息人的用户名

  private String date;          //发消息的时间

  public String getDate() {
    return date;
  }

  public void setDate(String date) {
    this.date = date;
  }

  public String getSendMsg() {
    return sendMsg;
  }

  public void setSendMsg(String sendMsg) {
    this.sendMsg = sendMsg;
  }

  public String getFrom() {
    return from;
  }

  public void setFrom(String from) {
    this.from = from;
  }

  public String getAlert() {
    return alert;
  }

  public void setAlert(String alert) {
    this.alert = alert;
  }

  public List<String> getNames() {
    return names;
  }

  public void setNames(List<String> names) {
    this.names = names;
  }

  public Message() {
   
  }

}
