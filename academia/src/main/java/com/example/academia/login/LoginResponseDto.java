package com.example.academia.login;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class LoginResponseDto {
  private String username;
  private String role;
}
