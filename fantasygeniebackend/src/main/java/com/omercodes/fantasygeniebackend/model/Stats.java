package com.omercodes.fantasygeniebackend.model;

import jakarta.persistence.*;
@Entity
@Table(name = "STATS")
public class Stats {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Stats_ID")
    private Long id;

    @Column(name = "Player_ID")
    private Long playerId;

    @Column(name = "Week")
    private int week;

    @Column(name = "PassingYds")
    private int passingYards;

    @Column(name = "PassingTds")
    private int passingTouchdowns;

    @Column(name = "PassingInt")
    private int passingInt;

    @Column(name = "RushingYds")
    private int rushingYards;

    @Column(name = "RushingTd")
    private int rushingTouchdowns;

    @Column(name = "ReceivingYds")
    private int receivingYards;

    @Column(name = "ReceivingTd")
    private int receivingTouchdowns;

    @Column(name = "FPTS_per_game")
    private float fantasyPointsPerGame;

    @Column(name = "Total_FPTS")
    private float totalFantasyPoints;

    // Getters and setters


    public Stats() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPlayerId() {
        return playerId;
    }

    public void setPlayerId(Long playerId) {
        this.playerId = playerId;
    }

    public int getWeek() {
        return week;
    }

    public void setWeek(int week) {
        this.week = week;
    }

    public int getPassingYards() {
        return passingYards;
    }

    public void setPassingYards(int passingYards) {
        this.passingYards = passingYards;
    }

    public int getPassingTouchdowns() {
        return passingTouchdowns;
    }

    public void setPassingTouchdowns(int passingTouchdowns) {
        this.passingTouchdowns = passingTouchdowns;
    }

    public int getPassingInterceptions() {
        return passingInt;
    }

    public void setPassingInterceptions(int passingInterceptions) {
        this.passingInt = passingInterceptions;
    }

    public int getRushingYards() {
        return rushingYards;
    }

    public void setRushingYards(int rushingYards) {
        this.rushingYards = rushingYards;
    }

    public int getRushingTouchdowns() {
        return rushingTouchdowns;
    }

    public void setRushingTouchdowns(int rushingTouchdowns) {
        this.rushingTouchdowns = rushingTouchdowns;
    }

    public int getReceivingYards() {
        return receivingYards;
    }

    public void setReceivingYards(int receivingYards) {
        this.receivingYards = receivingYards;
    }

    public int getReceivingTouchdowns() {
        return receivingTouchdowns;
    }

    public void setReceivingTouchdowns(int receivingTouchdowns) {
        this.receivingTouchdowns = receivingTouchdowns;
    }

    public float getFantasyPointsPerGame() {
        return fantasyPointsPerGame;
    }

    public void setFantasyPointsPerGame(float fantasyPointsPerGame) {
        this.fantasyPointsPerGame = fantasyPointsPerGame;
    }

    public float getTotalFantasyPoints() {
        return totalFantasyPoints;
    }

    public void setTotalFantasyPoints(float totalFantasyPoints) {
        this.totalFantasyPoints = totalFantasyPoints;
    }
}