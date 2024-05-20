package cu.meha.cars.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cu.meha.cars.entity.UserProfile;

public interface UserProfileRepository extends JpaRepository<UserProfile, Integer> {

}