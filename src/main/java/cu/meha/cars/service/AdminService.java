package cu.meha.cars.service;

import java.util.List;

import cu.meha.cars.entity.Car;
import cu.meha.cars.entity.CarBidding;
import cu.meha.cars.entity.UserAccount;
import cu.meha.cars.entity.UserProfile;

public interface AdminService {

  void editUser(UserProfile profile);

  void markAsAdmin(int idUser);

  UserProfile getProfileById(int idCar);

  List<UserAccount> listUser();

  List<UserAccount> listAdmin();

  List<Car> listCar();

  List<CarBidding> listCarBid();

  void approveCarBid(int idBid);

  void denyCarBid(int idBid);
}