package com.kgc.springssm.controller;

import com.kgc.springssm.pojo.Person;
import com.kgc.springssm.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-01 16:15
 */
@Controller
public class PersonController {
    @Resource
    PersonService personService;

    @RequestMapping("/")
    public String toindex(Model model){
        List<Person> list = personService.selectAll();
        model.addAttribute("list",list);
        return "index";
    }

    @RequestMapping("/dodel")
    public String dodel(Integer id) {
       personService.del(id);
       return "redirect:/";
    }

    @RequestMapping("/toadd")
    public String toadd(){
        return "add";
    }

    @RequestMapping("/doadd")
    public String doadd(Person person,Model model){
        int i = personService.add(person);
        if(i>0){
            model.addAttribute("msg","添加成功！");
            return "redirect:/";
        }else {
            model.addAttribute("msg","添加失败！");
            return "redirect:/toadd";
        }

    }
}
