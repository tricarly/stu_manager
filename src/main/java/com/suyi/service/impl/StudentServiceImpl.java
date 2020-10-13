package com.suyi.service.impl;

import com.github.pagehelper.PageHelper;
import com.suyi.domain.Student;
import com.suyi.mapper.StudentMapper;
import com.suyi.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> list(int page,int size) {
        PageHelper.startPage(page,size);
        return studentMapper.list();
    }

    @Override
    public void insert(Student student) {
        studentMapper.insert(student);
    }

    @Override
    public Student findById(int sid) {
        Student byId = studentMapper.findById(sid);
        return byId;
    }

    @Override
    public void update(Student student) {
        studentMapper.update(student);
    }

    @Override
    public void delete(int sid) {
        studentMapper.delete(sid);
    }

    @Override
    public List<Student> findByName(String sname) {
        PageHelper.startPage(1,10);
        return studentMapper.findByName("%"+sname+"%");
    }
}
