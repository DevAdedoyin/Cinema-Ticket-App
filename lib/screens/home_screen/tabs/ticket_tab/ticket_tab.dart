import 'package:flutter/material.dart';
import 'package:movie_ticket_app/screens/home_screen/tabs/ticket_tab/ticket_header.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';
import 'package:movie_ticket_app/widgets/ratings_and_imdb.dart';

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
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: imdbRating(),
                  right: 17,
                  bottom: 75,
                ),
                Container(
                  width: 290,
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
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              width: 130,
                              child: Text(
                                'The man and the goat and the horse',
                                style: TextStyle(fontSize: 18, color: white),
                              ),
                            ),
                            starRatings('20'),
                            const SizedBox(
                              width: 120,
                              child: Text(
                                'Adedoyin Oluwaleke',
                                style: TextStyle(fontSize: 15, color: white),
                              ),
                            )
                          ],
                        ),
                      ),
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
