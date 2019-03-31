package com.infinity.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.infinity.model.Roles;
@Repository
public interface RolesRepository extends JpaRepository<Roles, Integer> {

}
