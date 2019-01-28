package com.xiehua.notify.config;

import com.huboot.commons.component.auth.JwtTokenComponent;
import com.huboot.commons.filter.JWTAuthenticationFilter;
import com.huboot.commons.utils.JsonUtil;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;

import java.util.List;

@Configuration
public class WebConfig {

    @Bean
    public JWTAuthenticationFilter jwtAuthenticationFilter(JwtTokenComponent jwtTokenComponent) {
        JWTAuthenticationFilter filter = new JWTAuthenticationFilter(jwtTokenComponent);
        filter.addIgnorePattern("/admin/**");
        filter.addIgnorePattern("/js/**");
        filter.addIgnorePattern("/layui/**");
        filter.addIgnorePattern("/favicon.ico");
        return filter;
    }

    @Bean
    public MappingJackson2HttpMessageConverter jackson2HttpMessageConverter() {
        return new MappingJackson2HttpMessageConverter(JsonUtil.buildNormalMapper().getMapper());
    }
}
