package com.SearchHouse.headler;
/*package com.gaobo.headler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.gaobo.pojo.ContenVo;
import com.gaobo.pojo.Message;
import com.google.gson.Gson;

@ServerEndpoint("/chatSocket")
public class ChatSocket {
  private static Set<ChatSocket> sockets = new HashSet<ChatSocket>();       //储存所有的通信通道
  private static List<String> names = new ArrayList<String>();              //储存所有的联系人下姓名
  
  private static Map<String, Session> map = new HashMap<String, Session>(); //将联系人与通信通道同时保存
  
  private Session session;          //当前聊天人session
  private String username;          //当前聊天人姓名
  private Gson gson = new Gson();

  
  *//**
   * 打开通道时调用
   * @param session
   * @throws IOException 
   *//*
  @SuppressWarnings("unused")
  @OnOpen
  public void open(Session session) throws Exception {
	System.out.println("hello");
    this.session = session;
    sockets.add(this);
    
    String queryString = session.getQueryString();    //获取请求连接后面的值,输入汉字会有乱码,实际项目中使用账户ID   
    this.username = queryString.substring(queryString.indexOf("=") + 1);
    names.add(this.username);
    map.put(this.username, session);

    Message message = new Message();
    message.setAlert(this.username + "进入聊天室！！");
    message.setNames(names);
    broadcast(sockets, gson.toJson(message));
  }
  *//**
   * 发送消息时调用
   * @param session
   * @param message
   * @throws IOException 
   *//*
  @OnMessage
  public void receive(Session session,String msg) throws Exception {
    ContenVo contenVo = gson.fromJson(msg, ContenVo.class);
    if (contenVo.getType().equals("1")) {       //群聊
      Message message = new Message();
      message.setSendMsg(contenVo.getMsg());
      message.setFrom(this.username);
      message.setDate(new Date().toLocaleString());
      broadcast(sockets, gson.toJson(message));
      
    }else if(contenVo.getType().equals("2")){   //单聊
      System.out.println("type:2"+msg);
      String to = contenVo.getTo();
      Session session2 = this.map.get(to);
      
      Message messages = new Message();
      messages.setSendMsg("<font color=\"#FF0000\" >私聊："+contenVo.getMsg()+"<font>");
      messages.setFrom(this.username);
      messages.setDate(new Date().toLocaleString());
      System.out.println(msg);
      session.getBasicRemote().sendText(gson.toJson(msg));
      session2.getBasicRemote().sendText(gson.toJson(msg));
    }
    

  }

  
  *//**
   * 关闭网页时调用
   * @param session
   * @throws IOException 
   *//*
  @OnClose
  public void close(Session session) throws Exception {
    sockets.remove(this);
    names.remove(this.username);

    Message message = new Message();
    message.setAlert(this.username + "退出聊天室！！");
    message.setNames(names);

    broadcast(sockets, gson.toJson(message));
  }
  *//**
   * 群聊时将消息循环推送到前台
   * @param chatSockets
   * @param msg
   * @throws IOException
   * @throws CloneNotSupportedException 
   *//*
  public void broadcast(Set<ChatSocket> chatSockets, String msg) throws Exception {
    for (ChatSocket chatSocket : chatSockets) { 
    	System.out.println(msg);
        chatSocket.session.getBasicRemote().sendText(msg); 
    }
  }
  
  
}
*/