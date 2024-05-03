package com.omercodes.fantasygeniebackend.service;

import com.omercodes.fantasygeniebackend.model.Player;
import com.omercodes.fantasygeniebackend.repository.PlayerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; // Import the Service annotation

@Service
public class PlayerImpl implements PlayerService{

    @Autowired
    private PlayerRepository playerRepository;

    @Override
    public Player savePlayer(Player player) {
        // Implement the savePlayer method
        // Example:
        // return playerRepository.save(player);
        return playerRepository.save(player);
    }
}
