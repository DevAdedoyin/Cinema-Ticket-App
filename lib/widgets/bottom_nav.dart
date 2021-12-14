import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/state_manager/states.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';
import 'package:get/get.dart';

bottomNavBar() => Obx(() => BottomNavigationBar(
      backgroundColor: backgroundColor,
      selectedItemColor: white,
      unselectedItemColor: white.withOpacity(0.3),
      iconSize: 18,
      onTap: (currentIndex) {
        print(currentIndex);
        homeState.currentTab.value = currentIndex;
      },
      currentIndex: homeState.currentTab.value,
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
    ));
