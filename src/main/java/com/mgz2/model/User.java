package com.mgz2.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
@Entity(name = "users")
public class User {
    @Id
    private String id;

    @NotNull
    private String username;
}
