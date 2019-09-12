package com.vivo.service;

import com.vivo.po.Person;

import java.util.List;

public interface PersonService {
    public List<Person> findAll();
    public  void  addPerson(Person person);
    public  void  deletePerson(Integer id);
    public  Person getByid(Integer id);
    public  void updatePerson(Person person);

}
