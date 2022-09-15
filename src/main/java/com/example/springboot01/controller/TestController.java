/******************************************************************************
 * Copyright (C) 2022 CARS All Rights Reserved.
 *****************************************************************************/
package com.example.springboot01.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 功能说明：
 *
 * @author yujianrong
 * @version 1.0
 * @since 2022/9/9
 */
@RestController
public class TestController {

    @RequestMapping("/test")
    public String test(){
        return "success";
    }

}
