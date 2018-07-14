package com.geminno.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geminno.dao.MessageDao;
import com.geminno.pojo.Message;
import com.genminno.service.MessageService;
@Service
public class MessageServiceImpl implements MessageService {
	@Autowired
	MessageDao messagedao;

	@Override
	public void addMsg(Message msg) {
		// TODO Auto-generated method stub
		messagedao.addMsg(msg);
	}

	@Override
	public void delete(int msgId) {
		// TODO Auto-generated method stub
		messagedao.delete(msgId);
	}

	@Override
	public void update(Message msg) {
		// TODO Auto-generated method stub
		messagedao.update(msg);
	}

	@Override
	public Message getMsgById(int msgId) {
		// TODO Auto-generated method stub
		return messagedao.getMsgById(msgId);
	}

	@Override
	public List<Message> queryAllMessage() {
		// TODO Auto-generated method stub
		return messagedao.queryAllMessage();
	}

}
