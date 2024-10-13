import 'package:flutter/material.dart';



class WeatherCard extends StatelessWidget {
  final String icon;
  final String label;
  final String value;

  const WeatherCard({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      color: Color(0xFFe2e7fa),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              width: 40,
              height: 40,
            ),
            SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.lightBlue[300],
              ),
            ),
            SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> dayNames = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];

// ignore: must_be_immutable
class Card2 extends StatelessWidget {
  static DateTime day = DateTime.now();
  String icon;
  String degree;
  String Day;

  Card2({required this.Day, required this.icon, required this.degree});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: (Day == dayNames[day.weekday - 1]) ? const Color(0xFFa8bfd3) : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Day,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 5),
            Image.asset(
              icon,
              width: 60,
              height: 60,
            ),
            SizedBox(height: 10),
            Text(
              degree,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




