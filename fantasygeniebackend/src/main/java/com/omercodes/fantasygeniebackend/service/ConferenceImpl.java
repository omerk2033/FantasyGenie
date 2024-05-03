package com.omercodes.fantasygeniebackend.service;

import com.omercodes.fantasygeniebackend.model.Conference;
import com.omercodes.fantasygeniebackend.model.Player;
import com.omercodes.fantasygeniebackend.repository.ConferenceRepository;
import com.omercodes.fantasygeniebackend.repository.PlayerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ConferenceImpl implements ConferenceService{

    @Autowired
    private ConferenceRepository conferenceRepository;

    @Override
    public Conference saveConference(Conference conference) {
        // Implement the savePlayer method
        // Example:
        return conferenceRepository.save(conference);
    }
}
