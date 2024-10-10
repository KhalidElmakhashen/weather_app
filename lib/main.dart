import 'package:flutter/material.dart';
import 'package:weather_app/screens/home.dart';
import 'package:weather_app/screens/onboarding_screen.dart';
import 'package:weather_app/screens/splash_screen.dart';
import 'package:weather_app/shared.dart';

import 'screens/options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Shared.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:{
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/home': (context) => Home(),  
        '/options': (context) => Options()
      },
        
    );
  }
}















