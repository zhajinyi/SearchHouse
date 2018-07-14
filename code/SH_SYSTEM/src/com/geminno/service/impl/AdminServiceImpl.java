package com.geminno.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geminno.dao.AdminDao;
import com.geminno.pojo.Admin;
import com.genminno.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDao admindao;

	public AdminDao getAdmindao() {
		return admindao;
	}

	public void setAdmindao(AdminDao admindao) {
		this.admindao = admindao;
	}

	@Override
	public void addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		admindao.addAdmin(admin);

	}

	@Override
	public void deleteAdmin(String adminId) {
		// TODO Auto-generated method stub
		admindao.deleteAdmin(adminId);
	}

	@Override
	public void updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		admindao.updateAdmin(admin);
	}

	@Override
	public Admin getAdminById(String adminId) {
		// TODO Auto-generated method stub
		return admindao.getAdminById(adminId);
	}

	@Override
	public List<Admin> queryAllAdmin() {
		// TODO Auto-generated method stub
		return admindao.queryAllAdmin();
	}

}
