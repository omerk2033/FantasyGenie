package com.omercodes.fantasygeniebackend.controllers;

import com.omercodes.fantasygeniebackend.model.Player;
import com.omercodes.fantasygeniebackend.service.PlayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/player")
public class PlayerController {

    @Autowired
    private PlayerService playerService;

    @PostMapping("/addPlayer")
    public String add(@RequestBody Player player){
        playerService.savePlayer(player);
        return "Player saved!";
    }

}
