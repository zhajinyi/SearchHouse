package com.genminno.service;

import java.util.List;

import com.geminno.pojo.Message;

public interface MessageService {
	//增加
		public void addMsg(Message msg);
		
		//删除
		public void delete(int msgId);
		
		//修改
		public void update(Message msg);
		
		//查询单个；
		public Message getMsgById(int msgId);
		
		//查询全部
		public List<Message> queryAllMessage();

}
