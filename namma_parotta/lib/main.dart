import 'package:flutter/material.dart';
import 'package:namma_parotta/models/food.dart';
import 'package:namma_parotta/models/shop.dart';
import 'package:namma_parotta/pages/cart_page.dart';
import 'package:namma_parotta/pages/malabar.dart';
import 'package:namma_parotta/pages/splash.dart';
import 'package:provider/provider.dart';
import 'pages/intro_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      routes: {
        '/intropage': (context) => const IntroPage(
              title: 'mahi',
            ),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPage(),
        '/todayspecial': (context) => Malabar(
              food: Food(
                  name: 'Malabar',
                  price: '150',
                  imagepath: 'lib/images/malabar parotta.png',
                  rating: '4.5',
                  description: 'description'),
            ),
      },
    );
  }
}
