import 'package:flutter/material.dart';
import 'package:movie_ticket_app/screens/home_screen/tabs/ticket_tab/ticket_header.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class TicketTab extends StatefulWidget {
  const TicketTab({Key? key}) : super(key: key);

  @override
  _TicketTabState createState() => _TicketTabState();
}

class _TicketTabState extends State<TicketTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const TicketHeader(),
          Container(
            alignment: Alignment.center,
            width: 200,
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [white.withOpacity(0.2), backgroundColor]),
                borderRadius: BorderRadius.circular(12)),
            child: const Text(
              'Cinema',
              style: TextStyle(
                  color: white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            alignment: Alignment.centerLeft,
            child: RichText(
              text: const TextSpan(style: TextStyle(fontSize: 18), children: [
                TextSpan(
                  text: 'Today',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' tickets'),
              ]),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 200,
            alignment: Alignment.center,
            child: Stack(
              children: [
                Container(
                  width: 270,
                  height: 185,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        white.withOpacity(0.4),
                        seatColor!.withOpacity(0.2),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          child: Image.asset(
                            'assets/images/sweetgirl.jpg',
                          ),
                        ),
                      )
                    ],
                  ),
                  
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
