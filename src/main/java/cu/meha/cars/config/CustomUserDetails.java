package cu.meha.cars.config;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import cu.meha.cars.entity.Role;
import cu.meha.cars.entity.UserAccount;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CustomUserDetails implements UserDetails {

  private UserAccount user;

  public CustomUserDetails(UserAccount user) {
    super();
    this.user = user;
  }

  @Override
  public Collection<? extends GrantedAuthority> getAuthorities() {
    List<Role> roles = user.getRoles();

    List<SimpleGrantedAuthority> authorities = new ArrayList<>();

    for (Role role : roles) {
      authorities.add(new SimpleGrantedAuthority(role.getRole()));
    }
    return authorities;
  }

  @Override
  public String getPassword() {
    return user.getPassword();
  }

  @Override
  public String getUsername() {
    return user.getUsername();
  }

  @Override
  public boolean isAccountNonExpired() {
    return true;
  }

  @Override
  public boolean isAccountNonLocked() {
    return true;
  }

  @Override
  public boolean isCredentialsNonExpired() {
    return true;
  }

  @Override
  public boolean isEnabled() {
    return true;
  }

  public UserAccount getUser() {
    return user;
  }

}
