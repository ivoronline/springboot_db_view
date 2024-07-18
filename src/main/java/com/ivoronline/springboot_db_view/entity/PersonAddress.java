package com.ivoronline.springboot_db_view.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import org.hibernate.annotations.Immutable;

@Immutable
@Entity
public class PersonAddress {

  //PROPERTIES
  @Id
  public Integer Id;
  public String  name;
  public Integer age;
  public String  city;
  public String  street;

}
