package com.infinity.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.infinity.model.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {
}
