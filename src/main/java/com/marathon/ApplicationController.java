package com.marathon;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController(value = "/")
public class ApplicationController {

    @GetMapping
    @ResponseBody
    public String getMapping() {
        return "Test from Marathon-Mesos";
    }

}