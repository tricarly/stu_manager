package com.suyi.service;

import com.suyi.domain.Student;

import java.util.List;

public interface StudentService {
    public List<Student> list(int page,int size);

    public void insert(Student student);

    public Student findById(int sid);

    public void update(Student student);

    public void delete(int sid);

    public List<Student> findByName(String sname);
}
