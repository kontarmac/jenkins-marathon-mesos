package com.marathon;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.context.embedded.LocalServerPort;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.client.RestTemplate;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = {Application.class}, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class ApplicationTest {

    private RestTemplate restTemplate;

    @LocalServerPort
    private int port;

    @Before
    public void setUp() {
        restTemplate = new RestTemplate();
    }

    @Test
    public void contextLoads() {
        final String result = restTemplate.getForObject("http://localhost:" + port + "/", String.class);
        assertThat(result).isEqualTo("Test from Marathon-Mesos");
    }

}