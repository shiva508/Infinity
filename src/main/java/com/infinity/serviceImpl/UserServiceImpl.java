package com.infinity.serviceImpl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infinity.dao.UserRepository;
import com.infinity.form.AddressForm;
import com.infinity.form.UserForm;
import com.infinity.model.Address;
import com.infinity.model.User;
import com.infinity.service.UserService;

import ma.glasnost.orika.MapperFacade;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private MapperFacade formDomainMapperFacade;
	@Autowired
	private UserRepository userRepository;

	@Override
	@Transactional
	public UserForm saveUser(UserForm userForm) {
		System.out.println(userForm);
		User user = formDomainMapperFacade.map(userForm, User.class);
		populateFormToDomine(userForm, user);
		User usersaved =userRepository.save(user);
		UserForm userFormSaved=formDomainMapperFacade.map(usersaved, UserForm.class);
		return userFormSaved;
	}

	@Override
	@Transactional
	public UserForm getUser(Integer userId) {
		Optional<User> user=userRepository.findById(userId);
		UserForm userForm=null;
		if (user.isPresent()) {
			User userRepo=user.get();
			userForm=formDomainMapperFacade.map(userRepo, UserForm.class);	
		}
		return userForm;
	}

	public void populateFormToDomine(UserForm userforn, User user) {
		if (userforn.getAddressForm() != null) {
			for(AddressForm addressForm:userforn.getAddressForm()) {
				Address address= formDomainMapperFacade.map(addressForm, Address.class);
				System.out.println(address);
				user.addAddress(address);
			}
		}
	}
}
