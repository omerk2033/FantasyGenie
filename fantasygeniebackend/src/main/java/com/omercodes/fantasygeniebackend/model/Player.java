package com.omercodes.fantasygeniebackend.model;

import jakarta.persistence.*;

@Entity
@Table(name = "PLAYER")
public class Player {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Player_ID")
    private Long id;

    @Column(name = "Team_ID")
    private Long teamId;

    @Column(name = "Name")
    private String name;

    @Column(name = "Position")
    private String position;

    // Getters and setters


    public Player() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTeamId() {
        return teamId;
    }

    public void setTeamId(Long teamId) {
        this.teamId = teamId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
}
