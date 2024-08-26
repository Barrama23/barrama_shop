import 'package:barrama_shop/category_screen.dart';
import 'package:barrama_shop/home_screen.dart';
import 'package:barrama_shop/milk_screen.dart';
import 'package:barrama_shop/popular_product.dart';
import 'package:barrama_shop/search_screen.dart';
import 'package:barrama_shop/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:barrama_shop/intro_screen.dart';
import 'package:barrama_shop/login.dart';
import 'splash_screen.dart';
import 'intro_screen.dart';
import 'package:barrama_shop/log.dart';
import 'menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        Menu.routeName: (context) => Menu(),
        Login.routeName: (context) => Login(),
        Signup.routeName: (context)=> Signup(),
        HomeScreen.routeName: (context)=> HomeScreen(),
        Log.routeName: (context) => Log(),
        SearchScreen.routeName: (context) => SearchScreen(),
        PopularProduct.routeName: (context) => PopularProduct(),
        MilkScreen.routeName: (context) => MilkScreen(),
        CategoryScreen.routeName: (context) => CategoryScreen(),
      },
    );
  }
}
