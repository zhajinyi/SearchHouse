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
  private static Set<ChatSocket> sockets = new HashSet<ChatSocket>();       //�������е�ͨ��ͨ��
  private static List<String> names = new ArrayList<String>();              //�������е���ϵ��������
  
  private static Map<String, Session> map = new HashMap<String, Session>(); //����ϵ����ͨ��ͨ��ͬʱ����
  
  private Session session;          //��ǰ������session
  private String username;          //��ǰ����������
  private Gson gson = new Gson();

  
  *//**
   * ��ͨ��ʱ����
   * @param session
   * @throws IOException 
   *//*
  @SuppressWarnings("unused")
  @OnOpen
  public void open(Session session) throws Exception {
	System.out.println("hello");
    this.session = session;
    sockets.add(this);
    
    String queryString = session.getQueryString();    //��ȡ�������Ӻ����ֵ,���뺺�ֻ�������,ʵ����Ŀ��ʹ���˻�ID   
    this.username = queryString.substring(queryString.indexOf("=") + 1);
    names.add(this.username);
    map.put(this.username, session);

    Message message = new Message();
    message.setAlert(this.username + "���������ң���");
    message.setNames(names);
    broadcast(sockets, gson.toJson(message));
  }
  *//**
   * ������Ϣʱ����
   * @param session
   * @param message
   * @throws IOException 
   *//*
  @OnMessage
  public void receive(Session session,String msg) throws Exception {
    ContenVo contenVo = gson.fromJson(msg, ContenVo.class);
    if (contenVo.getType().equals("1")) {       //Ⱥ��
      Message message = new Message();
      message.setSendMsg(contenVo.getMsg());
      message.setFrom(this.username);
      message.setDate(new Date().toLocaleString());
      broadcast(sockets, gson.toJson(message));
      
    }else if(contenVo.getType().equals("2")){   //����
      System.out.println("type:2"+msg);
      String to = contenVo.getTo();
      Session session2 = this.map.get(to);
      
      Message messages = new Message();
      messages.setSendMsg("<font color=\"#FF0000\" >˽�ģ�"+contenVo.getMsg()+"<font>");
      messages.setFrom(this.username);
      messages.setDate(new Date().toLocaleString());
      System.out.println(msg);
      session.getBasicRemote().sendText(gson.toJson(msg));
      session2.getBasicRemote().sendText(gson.toJson(msg));
    }
    

  }

  
  *//**
   * �ر���ҳʱ����
   * @param session
   * @throws IOException 
   *//*
  @OnClose
  public void close(Session session) throws Exception {
    sockets.remove(this);
    names.remove(this.username);

    Message message = new Message();
    message.setAlert(this.username + "�˳������ң���");
    message.setNames(names);

    broadcast(sockets, gson.toJson(message));
  }
  *//**
   * Ⱥ��ʱ����Ϣѭ�����͵�ǰ̨
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