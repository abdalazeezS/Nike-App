import 'package:flutter/material.dart';
import 'package:nike_design/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike App UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "Poppins",
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
          headline2: TextStyle(
            fontFamily: "Poppins",
            fontSize: 18,
            color: Colors.black87,
          ),
          headline4: TextStyle(
            fontFamily: "Poppins",
            fontSize: 18,
            color: Colors.black,
          ),
          headline5: TextStyle(
            fontFamily: "Poppins",
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          caption: TextStyle(
            fontFamily: "Poppins",
            fontSize: 13,
            color: Colors.black38,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
