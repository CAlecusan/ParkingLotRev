package com.parking.parkinglot.common;

public class UserDto {
    String username;
    String email;
    Long Id;

    public UserDto(String username, String email, Long Id) {
        this.username = username;
        this.email = email;
        this.Id = Id;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public Long getId() {
        return Id;
    }
}
