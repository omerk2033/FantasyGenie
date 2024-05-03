package com.omercodes.fantasygeniebackend.repository;

import com.omercodes.fantasygeniebackend.model.Team;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TeamRepository extends JpaRepository<Team, Long> {


}
