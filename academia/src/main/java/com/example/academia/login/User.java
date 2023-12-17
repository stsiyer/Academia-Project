package com.example.academia.login;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class User {
    private String username;
    private String password;
    private Role role;
}
