import 'package:flutter/material.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: white.withOpacity(0.2),
        ),
      ),
    );
  }
}
