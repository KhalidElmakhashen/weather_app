import 'package:flutter/material.dart';

class Options_data {
  String? location;
  String? temp;
  String? humidity;
  String? max_temp;
  String? wind_speed;
  String? weahter_discriptoin;

  Image? image;

  Options_data({
      required this.location, 
      required this.temp, 
      required this.image, 
      this.max_temp, 
      this.humidity, 
      this.wind_speed, 
      this.weahter_discriptoin
    });
}


List<Options_data> currentWeather = [
  Options_data(
      location: "london", 
      temp:'15', 
      image: Image.asset("assets/weather/icons8-sun-80.png"),
      max_temp: '30 \u00B0C',
      humidity: '60',
      wind_speed: '3 km/h',
      weahter_discriptoin: "sunny"
    ),
  Options_data(
      location: "paris", 
      temp:'18', 
      image: Image.asset("assets/weather/icons8-cloud-94.png"),
      max_temp: '35 \u00B0C',
      humidity: '66',
      wind_speed: '1.5 km/h',
      weahter_discriptoin: "cloudy"
    ),
  Options_data(
      location: "cairo", 
      temp:'33', 
      image: Image.asset("assets/weather/icons8-sun-80.png"),
      max_temp: '50 \u00B0C',
      humidity: '120',
      wind_speed: '2.5 km/h',
      weahter_discriptoin: "bright sun"
    ),
  Options_data(
      location: "new york", 
      temp:'36', 
      image: Image.asset("assets/weather/icons8-rain-64.png"),
      max_temp: '40 \u00B0C',
      humidity: '21',
      wind_speed: '4 km/h',
      weahter_discriptoin: "rainy"
    ),

];