package com.hfcsbc.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by wangyunfei on 2017/6/12.
 */
@RestController
public class DemoController {

    //需要系统级认证
    @GetMapping("/queryDemo")
    public String getDemo(){
        return "demo";
    }

    //需要用户级认证
    @GetMapping("/queryOrder")
    @PreAuthorize("hasAuthority('query-order')")
    public String getOrder(){
        return "order";
    }
}
