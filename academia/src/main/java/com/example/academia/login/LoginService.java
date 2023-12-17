package com.example.academia.login;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class LoginService {
  private final LoginRepository loginRepository;

  public User getUserWithUsernamePassword(String username, String password) {
    return loginRepository.getUserByUsernamePassword(username, password);
  }

  public User getUserByUsername(String username) {
    return loginRepository.getUserByUsername(username);
  }
}
