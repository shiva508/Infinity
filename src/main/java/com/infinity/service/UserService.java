package com.infinity.service;

import java.util.Optional;


import com.infinity.form.UserForm;
import com.infinity.model.User;

public interface UserService {
public UserForm saveUser(UserForm userForm); 
public UserForm getUser(Integer userId);

}
