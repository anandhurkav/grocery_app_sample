import 'package:flutter/material.dart';
import 'package:grocery_app_sample/screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    color: Colors.deepPurpleAccent,
        title: 'Grocery App',
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        
        theme: ThemeData(
      
          primarySwatch: Colors.deepPurple,
        ),

        );
  }
}