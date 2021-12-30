import 'package:flutter/material.dart';
import 'package:movie_ticket_app/models/movie_model.dart';
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
            padding: EdgeInsets.only(right: 10),
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (_, index) {
                  return todayTicketCard(
                      movieDataList[index].image!,
                      movieDataList[index].title,
                      movieDataList[index].directorName,
                      movieDataList[index].ratingNumber);
                }),
          )
        ],
      ),
    );
  }

  Widget todayTicketCard(String image, title, director, ratings) => Container(
        width: 350,
        margin: EdgeInsets.only(
          left: 5,
        ),
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
                        image,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 130,
                          child: Text(
                            title,
                            style: TextStyle(fontSize: 18, color: white),
                          ),
                        ),
                        starRatings(ratings),
                        SizedBox(
                          width: 120,
                          child: Text(
                            director,
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
      );
}
