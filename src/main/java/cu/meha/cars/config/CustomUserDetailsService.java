package cu.meha.cars.config;

import cu.meha.cars.entity.UserAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import cu.meha.cars.repository.UserRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {

  @Autowired
  private UserRepository userRepo;

  @Override
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

    UserAccount user = userRepo.findByUsername(username);

    if (user == null) {
      throw new UsernameNotFoundException("Invalid username or password");
    }

    return new CustomUserDetails(user);
  }
}