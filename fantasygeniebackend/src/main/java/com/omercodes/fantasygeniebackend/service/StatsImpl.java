package com.omercodes.fantasygeniebackend.service;


import com.omercodes.fantasygeniebackend.model.Stats;
import com.omercodes.fantasygeniebackend.repository.StatsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StatsImpl implements StatsService {

    @Autowired
    private StatsRepository statsRepository;

    @Override
    public Stats saveStats(Stats stats){
        return statsRepository.save(stats);
    }

}
