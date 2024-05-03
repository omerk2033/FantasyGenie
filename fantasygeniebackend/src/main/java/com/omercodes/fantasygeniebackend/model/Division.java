package com.omercodes.fantasygeniebackend.model;

import jakarta.persistence.*;

@Entity
@Table(name = "DIVISION")
public class Division {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Division_ID")
    private Long id;

    @Column(name = "Conference_ID")
    private Long conferenceId;

    @Column(name = "Name")
    private String name;

    @Column(name = "Location")
    private String location;

    // Getters and setters


    public Division() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getConferenceId() {
        return conferenceId;
    }

    public void setConferenceId(Long conferenceId) {
        this.conferenceId = conferenceId;
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
