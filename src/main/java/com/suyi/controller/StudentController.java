package com.suyi.controller;

import com.github.pagehelper.PageInfo;
import com.suyi.domain.Student;
import com.suyi.service.impl.StudentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StudentServiceImpl studentService;
    @RequestMapping("/list")
    public ModelAndView list(@RequestParam(name = "page",required = true,defaultValue = "1") int page,@RequestParam(name = "size",required = true,defaultValue = "10") int size){
        ModelAndView modelAndView=new ModelAndView();
        List<Student> studentList=studentService.list(page, size);
        PageInfo pageInfo = new PageInfo(studentList);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("stu_list");
        return modelAndView;
    }
    @RequestMapping("/goHead")
    public String goHead(){
        return "main";
    }
    @RequestMapping("insertUI")
    public String insertUI(){
        return "insert";
    }
    @RequestMapping("/insert")
    public String insert(Student student){
        studentService.insert(student);
        return "redirect:/student/list";
    }
    @RequestMapping("/updateUI")
    public String updateUI(int sid, ModelMap modelMap){
        Student byId = studentService.findById(sid);
        modelMap.addAttribute("stu",byId);
        return "update";
    }
    @RequestMapping("/update")
    public String update(Student student){
        studentService.update(student);
        return "redirect:/student/list";
    }
    @RequestMapping("/delete")
    public String delete(int sid){
        studentService.delete(sid);
        return "redirect:/student/list";
    }
    @RequestMapping("findByName")
    public ModelAndView findByNameAndGender(String sname){
        ModelAndView modelAndView=new ModelAndView();
        List<Student> byName = studentService.findByName(sname);
        PageInfo pageInfo = new PageInfo(byName);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("stu_list");
        return modelAndView;
    }
}
