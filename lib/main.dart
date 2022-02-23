import 'package:flutter/material.dart';
import 'package:volunteer_services/splashscreen.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.orange,

      ),
      debugShowCheckedModeBanner: false,
      home:  Scaffold(body: SplashScreen()),

    );
  }
}
