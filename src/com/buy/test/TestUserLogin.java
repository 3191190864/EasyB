package com.buy.test;

import com.buy.dao.user.EasybuyUserImpl;
import com.buy.entity.EasybuyUser;

import java.sql.SQLException;

public class TestUserLogin {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        EasybuyUserImpl user = new EasybuyUserImpl();
        EasybuyUser admin = user.getUserByLoginName("admin");
        System.out.println(admin.getPassword());
    }
}
