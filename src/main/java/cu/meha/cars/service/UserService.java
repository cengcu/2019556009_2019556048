package cu.meha.cars.service;

import cu.meha.cars.entity.UserProfile;
import org.springframework.web.multipart.MultipartFile;

import cu.meha.cars.entity.UserAccount;

public interface UserService {

  void saveUser(UserAccount user, UserProfile profile);

  UserAccount findByUsername(String username);

  UserAccount getUserLogin();

  void saveImage(MultipartFile file, UserProfile profile) throws Exception;

  void editUserProfile(UserProfile profile);

  UserProfile getProfile(int idProfile);
}