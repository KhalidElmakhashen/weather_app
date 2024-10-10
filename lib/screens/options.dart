import 'package:flutter/material.dart';
import 'package:weather_app/enums.dart';


import 'package:weather_app/screens/home.dart';

import '../Options_data.dart';
import '../constants.dart';
import '../shared.dart';

class Options extends StatefulWidget {
  Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Locations",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemBuilder: (context,i){
            return SingleChildScrollView(
              child: Card(
                  shape: RoundedRectangleBorder(
                        side: BorderSide(color: const Color.fromARGB(255, 26, 26, 58), width: .5), 
                          borderRadius: BorderRadius.circular(12),
                  ),
                child: ListTile(
                  title: Text(currentWeather[i].location!),
                  // shape: Border.all(width:0.5),
                  
                  onTap: () {
                    setState(() {
                    currentLocation = i;
                    Shared.putInt(key: SharedKeys.location, value: i);
                    print(Shared.getInt(key: SharedKeys.location));
                    });
                    Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> Home()),
                    (Route<dynamic> route) => false,
                    );
                  } 
                  ),
              ),
            );
            }, 
          // separatorBuilder: (context,i)=>SizedBox(height: 3,), 
          itemCount: currentWeather.length
          ),
      )
    );
  }
}