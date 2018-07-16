package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.Indent;
import com.SearchHouse.pojo.UserInfo;

public interface IndentService {

	public void addIndent(Indent indent);

	// �����û�ID��ѯ������
	public List<Indent> getIndentByuserID(String userId);

	// �����ⷿ��ţ�ɾ��������
	public void deleteIndent(Integer indentId);

}
