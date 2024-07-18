package com.ivoronline.springboot_db_view.repository;

import com.ivoronline.springboot_db_view.entity.PersonAddress;
import org.springframework.data.repository.CrudRepository;

public interface PersonAddressRepository extends CrudRepository<PersonAddress, Integer> {
  PersonAddress findByName(String name);
}
