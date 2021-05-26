import 'dart:async';

import 'package:flutter/material.dart';


import '../AppColors.dart';
import '../homepage.dart';

/*class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:AnimatedSplashScreen(
          splash: Image.asset(
              'images/tic4.png',
              width: 350,
              height: 450,
              scale: 0.8,
              fit:BoxFit.fitHeight  ),
          nextScreen: MainPage(),
          splashTransition: SplashTransition.slideTransition,
          backgroundColor: Colors.lightBlueAccent,
          duration: 6000,
        ),
      ),
    );
  }
}*/
class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 8), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Homepage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kAddToCartBtnBGColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/face.gif',
              height: 120,
            ),
            SizedBox(height: 10,),
            Text(
              'FACE MASK DETECTION App',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,

              ),
            ),
            SizedBox(height: 200,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            SizedBox(height: 10,),
            Text(
              'Developed By...',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 15.0,

              ),
            ),
            Text(
              'FA17-BCS-075 & FA17-BCS-115',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                letterSpacing: 4.0,

              ),
            ),


          ],
        ),
      ),
    );
  }
}