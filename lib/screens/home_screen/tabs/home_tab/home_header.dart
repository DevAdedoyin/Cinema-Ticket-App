import 'package:flutter/material.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                      text: 'Hello  ',
                      style: TextStyle(
                          color: white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'Dash!',
                      style: TextStyle(
                          color: white.withOpacity(0.5),
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ]),
              ),
              const SizedBox(
                height: 5,
              ),
              Text('Book your favorite movies',
                  style: TextStyle(
                    color: white.withOpacity(0.45),
                    fontSize: 16,
                  )),
            ],
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
