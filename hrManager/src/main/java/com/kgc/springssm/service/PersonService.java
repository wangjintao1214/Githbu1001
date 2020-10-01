package com.kgc.springssm.service;

import com.kgc.springssm.pojo.Person;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-01 16:12
 */
public interface PersonService {
    List<Person>  selectAll();

    void  del(Integer id);

    int add(Person person);
}
