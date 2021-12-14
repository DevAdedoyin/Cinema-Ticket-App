import 'package:flutter/material.dart';

import 'package:movie_ticket_app/themes.dart/colors.dart';
import 'package:movie_ticket_app/widgets/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor, bottomNavigationBar: bottomNavBar);
  }
}
