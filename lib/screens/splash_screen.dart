import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gbverse/screens/home_screen.dart';
import 'package:gbverse/screens/onboarding_screens/onboarding_screen.dart';
import 'package:gbverse/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnBoarding(),),),);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 10,
                child: SizedBox(
                  width: 222,
                  height: 230,
              child: Image.asset("assets/logo.png"),
            )),
             Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text("from", style: TextStyle(color: AppColors.headingColor, fontSize: 20,),),
                  Text("Navaid Technologies", style: TextStyle(color: AppColors.headingColor, fontSize: 20,),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
