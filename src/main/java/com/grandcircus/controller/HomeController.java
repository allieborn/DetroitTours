package com.grandcircus.controller;

import com.grandcircus.models.UsersEntity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.ArrayList;

@Controller
public class HomeController {
    @RequestMapping("/")
    public ModelAndView helloWorld() {
        return new
                ModelAndView ( "welcome", "message", "Hello World" );
    }

    @RequestMapping("listUsers")
    public ModelAndView listUsers() {
        Configuration cfg = new Configuration ().configure ( "hibernate.cfg.xml" );
        SessionFactory sessionFact = cfg.buildSessionFactory ();
        Session usersSession = sessionFact.openSession ();
        usersSession.beginTransaction ();

        Criteria c = usersSession.createCriteria ( UsersEntity.class );
        ArrayList<UsersEntity> usersArrayList = (ArrayList <UsersEntity>) c.list ();
        return new ModelAndView ( "welcome2", "cList", usersArrayList );
    }
}