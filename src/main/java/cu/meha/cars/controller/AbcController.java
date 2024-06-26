package cu.meha.cars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import cu.meha.cars.entity.Car;
import cu.meha.cars.entity.UserProfile;
import cu.meha.cars.service.CarService;
import cu.meha.cars.service.UserService;

@Controller
public class AbcController {

  @Autowired
  private CarService carService;

  @Autowired
  private UserService userService;

  @GetMapping("/")
  public String homePage(Model model) {
    List<Car> listCar = carService.featuredCars();

    model.addAttribute("listCar", listCar);
    return "home";
  }

  // Contact
  @GetMapping("/contact-us")
  public String contactUs() {

    return "contact-us";
  }

  // About Us
  @GetMapping("/about-us")
  public String aboutUs() {

    return "about-us";
  }

  // KVKK
  @GetMapping("/meha-kvkk")
  public String mehaKvkk() {

    return "meha-kvkk";
  }


  // View User
  @GetMapping("/view-user/{firstName}/{idProfile}")
  public String viewUser(@PathVariable("idProfile") int idProfile, Model model) {
    UserProfile profile = userService.getProfile(idProfile);
    List<Car> listCar = carService.listCar();

    listCar.removeIf(car -> car.getUser().getProfile().getIdProfile() != idProfile);
    listCar.removeIf(car -> car.getStatus().equals("DEACTIVE"));

    model.addAttribute("listCar", listCar);

    model.addAttribute("profile", profile);

    return "view-user";
  }
}