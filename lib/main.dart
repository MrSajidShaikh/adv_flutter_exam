import 'package:adv_flutter_exam/View/detail_screen.dart';
import 'package:adv_flutter_exam/View/home_screen.dart';
import 'package:adv_flutter_exam/View/saved_countries.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/country_provider.dart';
import 'View/splashscreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CountryProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/detail': (context) => DetailScreen(),
        '/saved': (context) => SavedCountries(),
      },
    );
  }
}