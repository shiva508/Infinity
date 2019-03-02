package com.infinity.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.infinity.model.User;
@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

}
