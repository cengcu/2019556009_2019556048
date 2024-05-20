package cu.meha.cars.service;

import java.util.ArrayList;
import java.util.List;

import cu.meha.cars.repository.CarBiddingRepository;
import cu.meha.cars.repository.CarRepository;
import cu.meha.cars.repository.UserProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cu.meha.cars.entity.Car;
import cu.meha.cars.entity.CarBidding;
import cu.meha.cars.entity.Role;
import cu.meha.cars.entity.UserAccount;
import cu.meha.cars.entity.UserProfile;
import cu.meha.cars.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService {

  @Autowired
  private UserRepository userRepo;

  @Autowired
  private UserProfileRepository userProfileRepo;

  @Autowired
  private CarRepository carRepo;

  @Autowired
  private CarBiddingRepository carBidRepo;

  @Override
  public void editUser(UserProfile profile) {
    UserProfile editedProfile = userProfileRepo.findById(profile.getIdProfile()).get();

    editedProfile.setFirstName(profile.getFirstName());
    editedProfile.setLastName(profile.getLastName());
    editedProfile.setPhoneNumber(profile.getPhoneNumber());
    editedProfile.setAddress(profile.getAddress());
    editedProfile.setAbout(profile.getAbout());

    userProfileRepo.save(editedProfile);
  }

  @Override
  public void markAsAdmin(int idUser) {
    UserAccount user = userRepo.findById(idUser).get();

    List<Role> roles = new ArrayList<>();
    Role role = new Role();
    roles.add(role);

    for (Role r : roles) {
      r.setRole("ROLE_ADMIN");
      r.setUser(user);
    }

    user.setRoles(roles);
    user.setRole("ADMIN");

    userRepo.save(user);
  }

  @Override
  public List<UserAccount> listUser() {
    List<UserAccount> listUser = userRepo.findAll();

    listUser.removeIf(user -> user.getRole().equals("ADMIN"));
    return listUser;
  }

  @Override
  public List<UserAccount> listAdmin() {
    List<UserAccount> listAdmin = userRepo.findAll();

    listAdmin.removeIf(admin -> admin.getRole().equals("USER"));

    return listAdmin;
  }

  @Override
  public UserProfile getProfileById(int idProfile) {
    UserProfile profile = userProfileRepo.findById(idProfile).get();

    return profile;
  }

  @Override
  public List<Car> listCar() {
    List<Car> listCar = carRepo.findAll();

    return listCar;
  }

  @Override
  public List<CarBidding> listCarBid() {
    List<CarBidding> listCarBid = carBidRepo.findAll();

    listCarBid.removeIf(bid -> bid.getStatus().equals("STARTING"));

    return listCarBid;
  }

  @Override
  public void approveCarBid(int idBid) {
    CarBidding carBidding = carBidRepo.findById(idBid).get();

    carBidding.setStatus("APPROVED");

    carBidding.getCar().setStatus("SOLD");

    carBidRepo.save(carBidding);
  }

  @Override
  public void denyCarBid(int idBid) {
    CarBidding carBidding = carBidRepo.findById(idBid).get();

    carBidding.setStatus("DENIED");

    carBidRepo.save(carBidding);
  }
}