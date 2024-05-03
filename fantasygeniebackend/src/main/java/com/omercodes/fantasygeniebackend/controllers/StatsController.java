package com.omercodes.fantasygeniebackend.controllers;

import com.omercodes.fantasygeniebackend.model.Stats;
import com.omercodes.fantasygeniebackend.service.StatsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/stats")
public class StatsController {

    @Autowired
    private StatsService statsService;

    @PostMapping("/updateStats")
    public ResponseEntity<String> updateStats(@RequestBody Stats stats) {
        try {
            Stats savedStats = statsService.saveStats(stats);
            if (savedStats != null) {
                return ResponseEntity.ok("Player statistics updated successfully.");
            } else {
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to update player statistics.");
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error occurred while updating player statistics.");
        }
    }
}
