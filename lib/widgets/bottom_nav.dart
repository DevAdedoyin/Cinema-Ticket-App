import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/state_manager/states.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';
import 'package:get/get.dart';

List<Icon> iconList = const [
  Icon(
    FontAwesomeIcons.home,
  ),
  Icon(
    FontAwesomeIcons.ticketAlt,
  ),
  Icon(
    FontAwesomeIcons.user,
  ),
];

bottomNavBar() => Obx(() => BottomNavigationBar(
      backgroundColor: backgroundColor,
      selectedItemColor: white,
      unselectedItemColor: white.withOpacity(0.3),
      iconSize: 18,
      onTap: (currentIndex) {
        homeState.currentTab.value = currentIndex;
      },
      currentIndex: homeState.currentTab.value,
      items: [
        BottomNavigationBarItem(
            icon: ClipOval(
              child: Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  white.withOpacity(0.1),
                  white.withOpacity(0.5)
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FontAwesomeIcons.home,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ClipOval(
                        child: Container(
                      alignment: Alignment.center,
                      height: 5,
                      width: 5,
                      color: white,
                    ))
                  ],
                ),
              ),
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
