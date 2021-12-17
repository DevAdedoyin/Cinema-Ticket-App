import 'package:flutter/material.dart';
import 'package:movie_ticket_app/models/movie_model.dart';

class HomeMovies extends StatefulWidget {
  const HomeMovies({Key? key}) : super(key: key);

  @override
  _HomeMoviesState createState() => _HomeMoviesState();
}

class _HomeMoviesState extends State<HomeMovies> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: movieDataList.length,
          itemBuilder: (_, index) {
            return _card();
          }),
    );
    // _card();
  }
}

Widget _card() => Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 380,
      width: 250,
      child: Card(),
    );
