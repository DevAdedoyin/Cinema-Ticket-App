import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 60),
      child: Row(
        children: [
          TweenAnimationBuilder(
            duration: const Duration(seconds: 1),
            tween: Tween<double>(begin: 0, end: 0.6),
            builder: (_, double value, __) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          fontSize: value * 30,
                        ),
                        children: [
                          const TextSpan(
                              text: 'Hello ',
                              style: TextStyle(
                                  color: white, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: 'Dash!',
                              style: TextStyle(
                                  color: white.withOpacity(value),
                                  fontWeight: FontWeight.bold))
                        ]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('Book your favorite movies',
                      style: TextStyle(
                          color: white.withOpacity(value + 0.1),
                          fontSize: 16,
                          wordSpacing: value * 2)),
                ],
              );
            },
            curve: Curves.easeInSine,
          ),
          const Spacer(),
          ClipOval(
            child: SizedBox(
              height: 47,
              width: 47,
              child: Image.asset(
                'assets/images/dash.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}
