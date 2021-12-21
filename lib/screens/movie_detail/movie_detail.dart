import 'package:flutter/material.dart';
import 'package:movie_ticket_app/models/movie_model.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';
import 'package:movie_ticket_app/widgets/ratings_and_imdb.dart';

class MovieDetail extends StatelessWidget {
  final int index;
  const MovieDetail(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 380,
            width: double.maxFinite,
            child: Hero(
              tag: index,
              child: Image.asset(
                movieDataList[index].image!,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
              bottom: 5,
              left: 10,
              child: ratingsAndImdb(20, movieDataList[index].ratingNumber!))
        ],
      ),
    );
  }
}
