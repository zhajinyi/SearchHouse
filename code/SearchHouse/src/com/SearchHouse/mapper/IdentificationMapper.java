package com.gaobo.mapper;

import java.util.List;

public interface IdentificationMapper {
	// 增加一个认证记录；
	public void addIdentification(IdentificationMapper ident);

	// 修改认证记录；
	public void updateIdentification(IdentificationMapper ident);

	// 删除认证记录；
	public void deleteIdentification(int identID);

	// 根据ID取元素；
	public IdentificationMapper getIdentById(int identID);

	// List所有元素
	public List<IdentificationMapper> queryallIdents();

}
