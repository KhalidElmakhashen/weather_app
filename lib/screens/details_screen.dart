
import 'package:flutter/material.dart';

import '../widgets.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min, // Adjust to minimum size
            children: [
              Row(
                children: [
                  Card2(
                    Day: dayNames[0],
                    icon: "assets/weather/sun2.jpg",
                    degree: "20°C",
                  ),
                  SizedBox(width: 70),
                  Card2(
                    Day: dayNames[1],
                    icon: "assets/weather/windy2.jpg",
                    degree: "39°C",
                  ),
                  SizedBox(width: 50),
                  Card2(
                    Day: dayNames[2],
                    icon: "assets/weather/sun.png",
                    degree: "7°C",
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Card2(
                    Day: dayNames[3],
                    icon: "assets/weather/sun.png",
                    degree: "0°C",
                  ),
                  SizedBox(width: 40),
                  Card2(
                    Day: dayNames[4],
                    icon: "assets/weather/sun.png",
                    degree: "16°C",
                  ),
                  SizedBox(width: 40),
                  Card2(
                    Day: dayNames[5],
                    icon: "assets/weather/sun.png",
                    degree: "41°C",
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Card2(
                    Day: dayNames[6],
                    icon: "assets/weather/sun.png",
                    degree: "20°C",
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Breaking News",
                                style: TextStyle(fontSize: 25),
                              ),
                              SizedBox(height: 15),
                              Image.asset(
                                "assets/weather/storm2.jpg",
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: MediaQuery.of(context).size.width * 0.9,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "A powerful storm swept through the city last night, causing widespread damage.\n"
                                    "Winds howled as trees were uprooted, and heavy rain flooded the streets.\n"
                                    "Power outages affected thousands of homes, leaving residents in darkness.\n"
                                    "Emergency services worked tirelessly to clear debris and restore order.\n"
                                    "The community came together to support one another in the aftermath.",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
