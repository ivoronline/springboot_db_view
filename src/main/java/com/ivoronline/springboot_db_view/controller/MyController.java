package com.ivoronline.springboot_db_view.controller;

import com.ivoronline.springboot_db_view.entity.PersonAddress;
import com.ivoronline.springboot_db_view.repository.PersonAddressRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class MyController {

  //PROPERTIES
  @Autowired PersonAddressRepository personAddressRepository;

  //================================================================
  // GET PERSON
  //================================================================
  // http://localhost:8080/GetPerson?name=John
  @RequestMapping("GetPerson")
  String addPerson(@RequestParam String name) {

    //CREATE ENTITY OBJECT
    PersonAddress personAddress = personAddressRepository.findByName(name);
    
    //CONSTRUCT RESULT STRING
    String result  = personAddress.name + " is " + personAddress.age + " years old. ";
           result += "He lives in " + personAddress.city + " in " + personAddress.street;

    //RETURN SOMETHING TO BROWSER
    return result;

  }

}

