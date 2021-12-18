import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
            child: TextField(
              style: const TextStyle(color: white),
              cursorColor: white.withOpacity(0.7),
              decoration: InputDecoration(
                filled: true,
                fillColor: white.withOpacity(val),
                prefixIcon: Icon(
                  FontAwesomeIcons.search,
                  color: white.withOpacity(0.7),
                  size: 18,
                ),
                suffixIcon: SizedBox(
                  width: 30,
                  child: Row(
                    children: [
                      Text(
                        '|',
                        style: TextStyle(
                            color: white.withOpacity(0.1), fontSize: 25),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.mic,
                        color: white.withOpacity(0.6),
                      )
                    ],
                  ),
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: white.withOpacity(0.4),
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(val * 55),
                    borderSide: BorderSide.none),
              ),
            ),
          );
        });
  }
}
