package com.omercodes.fantasygeniebackend.repository;

import com.omercodes.fantasygeniebackend.model.Stats;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StatsRepository extends JpaRepository<Stats, Long> {
}
