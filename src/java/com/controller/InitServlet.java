package com.controller;

import com.dao.AdminDao;
import com.dao.TrainDao;
import com.dao.UserDao;
import com.dao.impl.AdminDaoImpl;
import com.dao.impl.TrainDaoImpl;
import com.dao.impl.UserDaoImpl;
import com.service.AdminService;
import com.service.TrainService;
import com.service.UserService;
import com.service.impl.AdminServiceImpl;
import com.service.impl.TrainServiceImpl;
import com.service.impl.UserServiceImpl;
import javax.sql.DataSource;
import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;

public abstract class InitServlet extends HttpServlet {

    private @Resource(name = "jdbc/train")//испальзование листнера
    DataSource dataSource;
    protected UserDao userDao;
    protected TrainDao trainDao;
    protected UserService userService;
    protected TrainService trainService;
    protected AdminDao adminDao;
    protected AdminService adminService;

    @Override
    public void init() {//инициализация объектов с которыми работает сервлеты
        userDao = new UserDaoImpl(dataSource);
        userService = new UserServiceImpl(userDao);
        trainDao = new TrainDaoImpl(dataSource);
        trainService = new TrainServiceImpl(trainDao);
        adminDao = new AdminDaoImpl(dataSource);
        adminService = new AdminServiceImpl(adminDao);
    }
}
