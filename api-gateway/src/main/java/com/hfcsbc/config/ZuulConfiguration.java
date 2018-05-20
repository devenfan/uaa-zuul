package com.hfcsbc.config;

import com.hfcsbc.SimpleZuulFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ZuulConfiguration {

    @Bean
    public SimpleZuulFilter simpleZuulFilter() {
        return new SimpleZuulFilter();
    }
}
