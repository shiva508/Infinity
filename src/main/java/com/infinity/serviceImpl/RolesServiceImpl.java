package com.infinity.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infinity.dao.RolesRepository;
import com.infinity.model.Roles;
import com.infinity.service.RolesService;

@Service

public class RolesServiceImpl implements RolesService {
	@Autowired
	RolesRepository rolesRepository;
	@Transactional()
	public Roles save(Roles role) {
		return rolesRepository.save(role);
	}
	@Transactional(readOnly=true)
	public List<Roles> roles() {
		return rolesRepository.findAll();
	}
}
