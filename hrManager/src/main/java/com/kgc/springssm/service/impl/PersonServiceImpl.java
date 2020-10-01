package com.kgc.springssm.service.impl;

import com.kgc.springssm.mapper.PersonMapper;
import com.kgc.springssm.pojo.Person;
import com.kgc.springssm.service.PersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-01 16:13
 */
@Service
public class PersonServiceImpl implements PersonService{
    @Resource
    PersonMapper personMapper;

    @Override
    public List<Person> selectAll() {
        List<Person> people = personMapper.selectByExample(null);
        return people;
    }

    @Override
    public void del(Integer id) {
        personMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int add(Person person) {
        int i = personMapper.insertSelective(person);
        return i;
    }
}
