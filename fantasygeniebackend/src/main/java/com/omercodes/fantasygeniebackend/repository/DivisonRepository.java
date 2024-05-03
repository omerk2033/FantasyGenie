package com.omercodes.fantasygeniebackend.repository;

import com.omercodes.fantasygeniebackend.model.Division;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DivisonRepository extends JpaRepository<Division, Long> {
}
