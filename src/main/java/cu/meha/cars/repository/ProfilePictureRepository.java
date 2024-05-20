package cu.meha.cars.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cu.meha.cars.entity.ProfilePicture;

public interface ProfilePictureRepository extends JpaRepository<ProfilePicture, Integer> {

}