package com.example.academia.login;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.academia.core.ResponseBuilder;
import com.example.academia.core.ResponseDto;

import lombok.RequiredArgsConstructor;

@CrossOrigin(originPatterns = "*localhost*")
@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class LoginController {
  private final LoginService loginService;

  @PostMapping("/login")
  public ResponseDto getUserByUsernamePassword(@RequestBody LoginRequestDto loginDto) {
    User user = loginService.getUserWithUsernamePassword(loginDto.getUsername(),
    loginDto.getPassword());
    return ResponseBuilder.createResponse(LoginResponseDto.builder()
        .username(user.getUsername())
        .role(user.getRole().toString()).build());
  }
}
