package com.omercodes.fantasygeniebackend.model;

import jakarta.persistence.*;


@Entity
@Table(name = "CONFERENCE")
public class Conference {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Conference_ID")
    private Long id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Location")
    private String location;

    // Getters and setters

    public Conference() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}