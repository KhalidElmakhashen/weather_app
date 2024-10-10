import 'package:weather_app/enums.dart';

import 'shared.dart';

List<String> months = [
    "January", "February", "March", "April", "May", "June", 
    "July", "August", "September", "October", "November", "December"
  ];
int? currentLocation;

int current(){
  if(currentLocation == Shared.getInt(key: SharedKeys.location)){
    return currentLocation!;
  } else{
    return Shared.getInt(key: SharedKeys.location);
  }
}


// currentLocation = Shared.getInt(key: SharedKeys.location);



