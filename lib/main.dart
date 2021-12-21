import 'package:flutter/material.dart';
import 'package:movie_ticket_app/screens/home_screen/home_screen.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movie Ticket',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: backgroundColor),
      home: const HomeScreen(),
    );
  }
}
