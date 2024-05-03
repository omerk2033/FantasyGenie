package com.omercodes.fantasygeniebackend.controllers;

import com.omercodes.fantasygeniebackend.service.SQLService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/sql")
@CrossOrigin
public class SQLController {

    @Autowired
    private SQLService sqlService;

    @PostMapping("/execute")
    public ResponseEntity<Object> executeSQL(@RequestBody Map<String, String> requestBody) {
        String query = requestBody.get("query");
        if (query == null || query.trim().isEmpty()) {
            return ResponseEntity.badRequest().body("Query is empty.");
        }

        try {
            Object result = sqlService.execute(query);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

}
