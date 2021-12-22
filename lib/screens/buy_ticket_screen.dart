import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/models/movie_model.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class BuyTicketScreen extends StatelessWidget {
  final int index;
  const BuyTicketScreen(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            movieDataList[index].title!,
            style: const TextStyle(
                color: white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, pos) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      side: BorderSide(
                          color: white.withOpacity(0.3), width: 0.5)),
                  child: Container(
                    color: backgroundColor,
                    height: 80,
                    width: 60,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Icon(
                          Icons.access_time_outlined,
                          size: 14,
                          color: white.withOpacity(0.5),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          movieDataList[index].showTime![pos].split(' ').last,
                          style: TextStyle(
                              color: white.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          movieDataList[index].showTime![pos].split(' ').first,
                          style: TextStyle(
                              color: white.withOpacity(
                                0.5,
                              ),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: movieDataList[index].showTime!.length,
            ),
          )
        ],
      ),
    );
  }
}
