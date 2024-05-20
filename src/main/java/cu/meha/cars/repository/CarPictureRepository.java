package cu.meha.cars.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cu.meha.cars.entity.CarPicture;

public interface CarPictureRepository extends JpaRepository<CarPicture, Integer> {

}
