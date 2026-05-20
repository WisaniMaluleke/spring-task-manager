package com.wis.web;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;

@Configuration
public class RootConfig {

    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName("org.postgresql.Driver");
        ds.setUrl(System.getenv().getOrDefault("DB_URL", "jdbc:postgresql://db:5432/wisdb"));
        ds.setUsername(System.getenv().getOrDefault("DB_USER", "wisuser"));
        ds.setPassword(System.getenv().getOrDefault("DB_PASSWORD", "wispass"));
        return ds;
    }
}