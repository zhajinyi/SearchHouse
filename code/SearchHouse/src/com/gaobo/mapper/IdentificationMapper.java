package com.gaobo.mapper;

import java.util.List;

public interface IdentificationMapper {
	// ����һ����֤��¼��
	public void addIdentification(IdentificationMapper ident);

	// �޸���֤��¼��
	public void updateIdentification(IdentificationMapper ident);

	// ɾ����֤��¼��
	public void deleteIdentification(int identID);

	// ����IDȡԪ�أ�
	public IdentificationMapper getIdentById(int identID);

	// List����Ԫ��
	public List<IdentificationMapper> queryallIdents();

}
