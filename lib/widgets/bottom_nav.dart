import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/state_manager/states.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';
import 'package:get/get.dart';

// Bottom Nav Icons
List<Icon> iconList = const [
  Icon(
    FontAwesomeIcons.home,
  ),
  Icon(
    FontAwesomeIcons.ticketAlt,
  ),
];

// Bottom Navigation Bar Item
BottomNavigationBarItem bottomNavItem(int index) => BottomNavigationBarItem(
    icon: index != homeState.currentTab.value
        ? iconList[index]
        : ClipOval(
            child: Container(
              width: 55,
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                white.withOpacity(0.1),
                white.withOpacity(0.5)
              ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconList[index],
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
    label: '');

// Bottom Navigation Bar
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
        ...List.generate(iconList.length, (index) => bottomNavItem(index))
      ],
    ));
