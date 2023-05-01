import 'package:best_buy/pages/area_manager_dashboard.dart';
import 'package:best_buy/pages/welcome_screen.dart';
//import 'package:best_buy/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Best Buy',
      // home:  areaManagerDashboard(),
      home:  WelcomeScreen(),
      //home: LoginScreen(),

    );
  }
}
