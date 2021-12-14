import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

final bottomNavBar = BottomNavigationBar(
  backgroundColor: backgroundColor,
  selectedItemColor: white,
  unselectedItemColor: white.withOpacity(0.3),
  iconSize: 18,
  items: const [
    BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.home,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.ticketAlt,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.user,
        ),
        label: ''),
  ],
);
