package com.gaobo.service;

import java.util.List;

import com.gaobo.pojo.Indent;
import com.gaobo.pojo.UserInfo;

public interface IndentService {

	public void addIndent(Indent indent);

	// �����û�ID��ѯ������
	public List<Indent> getIndentByuserID(String userId);

	// �����ⷿ��ţ�ɾ��������
	public void deleteIndent(Integer indentId);

}
