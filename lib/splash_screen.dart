import 'dart:async';

import 'package:barrama_shop/intro_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fireOpenApp();
  }
  void fireOpenApp() async{
    await Future.delayed(const Duration(seconds: 3));
    startApp();

  }
  void startApp(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:
        (context)=> const IntroScreen()), (route)=> false);

  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Center(
        child: Image.asset("images/log.png", width: media.width *1, fit: BoxFit.cover,),
      )
    );
  }
}

