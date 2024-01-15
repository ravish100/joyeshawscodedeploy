package com.example.joyeshspringbootrestapi1;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="/info")
public class Controller {

    @GetMapping(value="/getinfo")
    public String getinfo()
    {

        return "Hello Divisha rest api";
    }
    @GetMapping(value="/getinfo2")
    public String getinfo2()
    {

        return "Hello anish rest api";
    }


}
