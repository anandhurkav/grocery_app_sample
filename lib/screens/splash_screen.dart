import 'package:flutter/material.dart';
import 'package:grocery_app_sample/home_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splash_low.png", height: 350,),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Text('Buy Fresh Groceries', 
              style: TextStyle(
                color: Color.fromARGB(255, 235, 112, 74),
                fontSize: 22,
                fontWeight: FontWeight.bold

              ),),
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
              },
              child: Ink(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 61, 112, 200),
                ),
                child: const Text('Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
              ),
            )
          ],
        ),
      )

    );
  }
}