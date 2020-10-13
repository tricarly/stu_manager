package com.suyi.mapper;

import com.suyi.domain.Student;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface StudentMapper {
    @Select("select * from stu")
    public List<Student> list();
    @Insert("insert into stu values(#{sid},#{sname},#{gender},#{sno},#{phone},#{birthday},#{hobby},#{info},#{grade})")
    public void insert(Student student);
    @Select("select * from stu where sid=#{sid}")
    public Student findById(int sid);
    @Update("update stu set sname=#{sname},gender=#{gender},sno=#{sno},phone=#{phone},birthday=#{birthday},hobby=#{hobby},info=#{info},grade=#{grade} where sid=#{sid}")
    public void update(Student student);
    @Delete("delete from stu where sid=#{sid}")
    public void delete(int sid);
    @Select("select * from stu where sname like #{name}")
    public List<Student> findByName(String sname);
}
