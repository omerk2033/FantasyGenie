package com.omercodes.fantasygeniebackend.controllers;

import com.omercodes.fantasygeniebackend.model.Conference;
import com.omercodes.fantasygeniebackend.service.ConferenceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/conference")
public class ConferenceController {

    @Autowired
    private ConferenceService conferenceService;

    @PostMapping("/addConference")
    public String add(@RequestBody Conference conference){
        conferenceService.saveConference(conference);
        return "Conference saved!";
    }

}