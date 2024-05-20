package cu.meha.cars.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cu.meha.cars.entity.TestDrive;

public interface TestDriveRepository extends JpaRepository<TestDrive, Integer> {

}