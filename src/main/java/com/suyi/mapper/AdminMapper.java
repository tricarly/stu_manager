package com.suyi.mapper;

import com.suyi.domain.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface AdminMapper {
    @Select("select * from admin where account=#{account} and password=#{password}")
    public Admin login(@Param("account") String account,@Param("password") String password);
}
