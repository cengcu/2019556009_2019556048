package cu.meha.cars.repository;

import cu.meha.cars.entity.UserAccount;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserAccount, Integer> {

  public UserAccount findByUsername(String username);

}