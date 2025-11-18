package com.codingshuttle.project.uber.uberApp.controllers;

import com.codingshuttle.project.uber.uberApp.TestContainerConfiguration;
import com.codingshuttle.project.uber.uberApp.dto.OnboardDriverDto;
import com.codingshuttle.project.uber.uberApp.dto.SignupDto;
import com.codingshuttle.project.uber.uberApp.entities.User;
import com.codingshuttle.project.uber.uberApp.entities.enums.Role;
import com.codingshuttle.project.uber.uberApp.repositories.UserRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.util.Set;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@Import(TestContainerConfiguration.class)
class AuthControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ObjectMapper objectMapper;

    private User user;

    @BeforeEach
    void setUp() {
        user = new User();
        user.setId(1L);
        user.setEmail("test@example.com");
        user.setPassword("password");
        user.setRoles(Set.of(Role.RIDER));

        if (!userRepository.existsById(1L)) {
            userRepository.save(user);
        }
    }

    @Test
    void testSignUp_success() throws Exception {
        SignupDto signupDto = new SignupDto();
        signupDto.setEmail("newuser@example.com");
        signupDto.setName("Test name");
        signupDto.setPassword("password");

        mockMvc.perform(
                        post("/auth/signup")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsString(signupDto))
                )
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.data.email").value(signupDto.getEmail()))
                .andExpect(jsonPath("$.data.name").value(signupDto.getName()));
    }

    @Test
    void testOnboardDriver_success() throws Exception {
        OnboardDriverDto onboardDriverDto = new OnboardDriverDto();
        onboardDriverDto.setVehicleId("ABC123");

        mockMvc.perform(
                        post("/auth/onBoardNewDriver/1")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsString(onboardDriverDto))
                )
                .andExpect(status().isCreated());
    }
}
