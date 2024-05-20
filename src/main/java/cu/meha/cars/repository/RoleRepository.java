package cu.meha.cars.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cu.meha.cars.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

  public Role findByRole(String role);
}