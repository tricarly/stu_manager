package com.suyi.service.impl;

import com.suyi.domain.Admin;
import com.suyi.mapper.AdminMapper;
import com.suyi.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin login(String account, String password) {
        try {
            Admin admin = adminMapper.login(account, password);
            return admin;
        }catch (EmptyResultDataAccessException e){
            return null;
        }
    }
}
