package com.parking.parkinglot.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "user_group")
public class UserGroup {
    @Column(name = "user_group")
    private String userGroup;

    @Column(name = "filename")
    private String filename;

    @Column(name = "username")
    private String username;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "id", nullable = false)
    private Long id;

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getUserGroup() {
        return userGroup;
    }

    public void setUserGroup(String userGroup) {
        this.userGroup = userGroup;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

}