package com.codingshuttle.project.uber.uberApp.repositories;

import com.codingshuttle.project.uber.uberApp.entities.RideRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RideRequestRepository extends JpaRepository<RideRequest,Long> {
    @Query("SELECT r FROM RideRequest r JOIN FETCH r.rider WHERE r.id = :id")
    Optional<RideRequest> findByIdWithRider(@Param("id") Long id);
}
