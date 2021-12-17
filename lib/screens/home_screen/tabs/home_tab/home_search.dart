import 'package:flutter/material.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        duration: const Duration(milliseconds: 800),
        tween: Tween<double>(begin: 0, end: 0.25),
        builder: (_, double val, __) {
          return Container(
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: white.withOpacity(val),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(val * 48),
                    borderSide: BorderSide.none),
              ),
            ),
          );
        });
  }
}
