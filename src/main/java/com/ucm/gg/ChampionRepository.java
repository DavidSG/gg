package com.ucm.gg;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ucm.gg.model.Champion;


@Repository
public interface ChampionRepository extends JpaRepository<Champion, Long> {
    
    @Query("SELECT c.name FROM Champion c WHERE c.champName = Ahri")
    Champion searchChampions();
}