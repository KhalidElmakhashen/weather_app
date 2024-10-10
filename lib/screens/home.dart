
import 'package:flutter/material.dart';
import 'package:weather_app/Options_data.dart';
import 'package:weather_app/screens/options.dart';


import '../constants.dart';
import '../widgets.dart';
import 'details_screen.dart';


class Home extends StatelessWidget {
   Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.flash_on, size: 50, color: Colors.blue)),
            title: Text("Weather App",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.blue),),
            actions: [IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=> Options()));}, icon: Icon(Icons.search)),],
        ),
      


      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(currentWeather[current()].location!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32,), ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("${dayNames[Card2.day.weekday]}, ${Card2.day.day} ${months[Card2.day.month - 1]}",style: TextStyle(color: Colors.black.withOpacity(.5)))
                  ),

              ],
            ),
            SizedBox(height: 40,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(  
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFF9aaff2),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          offset: Offset(0, 4), 
                        ),
                      ],
                  ),
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  right: 70,
                  top: 25,
                  child: Text(currentWeather[current()].temp??'0',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 92,color: const Color(0xFFa6c2ea)),)
                ),
                Positioned(
                  top: -70,
                  child: Container(
                  height: 150,
                  width: 150,
                  child:currentWeather[currentLocation??0].image!,
                )),
                Positioned(
                  right: 15,
                  top: 19,
                  child: Text('\u00B0C', 
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 54,color: const Color(0xFFa6c2ea)),)
                  ),
                Positioned(
                  bottom: 20,
                  left: 30,
                  child: Text(currentWeather[current()].weahter_discriptoin??'no discription', 
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36,color: Colors.white),)
                )
              ],
            ),
            SizedBox(height: 40,),
            Row(
            
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WeatherCard(
                    icon:"assets/weather/windy2.jpg", // You can use other icons or images
                    label: 'Wind Speed',
                    value: currentWeather[current()].wind_speed??'0',
                  ),
                  WeatherCard(
                    icon: "assets/weather/humidity.png", // Representing humidity
                    label: 'Humidity',
                    value: currentWeather[current()].humidity??'0',
                  ),
                  WeatherCard(
                    icon: "assets/weather/temp2.jpg", // Representing temperature
                    label: 'Max Temp',
                    value: currentWeather[current()].max_temp??'0',
                  ),
                ],
              ),          
            SizedBox(height: 30,),
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen(),
                          ),
                        );
                      },
                      child: Text('Next 7 Days'),
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.lightBlue, // Text color
                        ),
                      ),
                    ),
                  ],
                ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card2(
                      Day: dayNames[0],
                      icon: "assets/weather/sun.png",
                      degree: "20°C",
                    ),
                    Card2(
                      Day: dayNames[1],
                      icon: "assets/weather/sun.png",
                      degree: "39°C",
                    ),
                    Card2(
                      Day: dayNames[2],
                      icon: "assets/weather/sun.png",
                      degree: "7°C",
                    ),
                    Card2(
                      Day: dayNames[3],
                      icon: "assets/weather/sun.png",
                      degree: "18°C",
                    ),
                    Card2(
                      Day: dayNames[4],
                      icon: "assets/weather/sun.png",
                      degree: "16°C",
                    ),
                    Card2(
                      Day: dayNames[5],
                      icon: "assets/weather/sun.png",
                      degree: "41°C",
                    ),
                    Card2(
                      Day: dayNames[6],
                      icon: "assets/weather/sun.png",
                      degree: "20°C",
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}