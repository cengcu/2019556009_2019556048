package cu.meha.cars.service;

import java.util.List;

import cu.meha.cars.repository.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cu.meha.cars.entity.Car;

@Service
public class CarServiceImpl implements CarService {

  @Autowired
  private CarRepository carRepo;

  @Override
  public List<Car> listCar() {
    List<Car> listCar = carRepo.findAll();

    listCar.removeIf(car -> car.getStatus().equals("DEACTIVE"));

    return listCar;
  }

  @Override
  public List<Car> searchCar(String keyword) {
    List<Car> cars = carRepo.searchCar(keyword);

    cars.removeIf(car -> car.getStatus().equals("DEACTIVE"));

    return cars;
  }

  @Override
  public List<Car> searchCarByPriceRange(int low, int high) {
    List<Car> cars = carRepo.searchCarByPriceRange(low, high);

    cars.removeIf(car -> car.getStatus().equals("DEACTIVE"));

    return cars;
  }

  @Override
  public Car getCarById(int id) {
    Car car = carRepo.findById(id).get();

    return car;
  }

  @Override
  public List<Car> searchCarByKeywordAndPriceRange(String keyword, int low, int high) {
    List<Car> cars = carRepo.searchCarByKeywordAndPriceRange(keyword, low, high);

    cars.removeIf(car -> car.getStatus().equals("DEACTIVE"));

    return cars;
  }

  @Override
  public List<Car> featuredCars() {
    List<Car> featuredCars = carRepo.featuredCars();

    return featuredCars;
  }

  @Override
  public List<Car> findAllByOrderByPriceAsc() {
    return carRepo.findAllByOrderByPriceAsc();
  }

  @Override
  public List<Car> findAllByOrderByPriceDesc() {
    return carRepo.findAllByOrderByPriceDesc();
  }

}