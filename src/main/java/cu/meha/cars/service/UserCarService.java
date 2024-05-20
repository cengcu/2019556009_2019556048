package cu.meha.cars.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import cu.meha.cars.entity.Car;
import cu.meha.cars.entity.CarBidding;
import cu.meha.cars.entity.TestDrive;
import cu.meha.cars.entity.UserAccount;

public interface UserCarService {

  List<Car> listUserCar();

  void postCar(MultipartFile file, Car car) throws Exception;

  void editCar(Car car);

  void activateCarPost(int id);

  void deactivateCarPost(int id);

  List<CarBidding> listCarBid();

  Car getCarById(int id);

  void postCarBidding(CarBidding carBidding);

  int highestBidding(int idCar);

  void saveTestDrive(String date, UserAccount user, Car car);

  List<TestDrive> listTestDrive();

  void saveUploadPicture(MultipartFile file, Car car) throws Exception;
}