import 'package:expense_tracker/home_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScre(),
    );
  }
}

class SplashScre extends StatelessWidget {
  const SplashScre({Key? key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        /* Enable scrolling  */
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/splash.gif', height: 300),
                /* Adjust the height as needed */
                const SizedBox(height: 16),
                /* Add some spacing */
                SingleChildScrollView(
                  child: const Text(
                    'Expense App',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white, // Change the background color
      nextScreen: HomePage(),
      splashIconSize: 250,
      duration: 2500,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
