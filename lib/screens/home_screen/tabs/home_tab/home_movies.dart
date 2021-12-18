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
            return _card(movieDataList[index].image!);
          }),
    );
    // _card();
  }
}

Widget _card(String img) => ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 380,
        width: 270,
        child: Card(
            elevation: 10,
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
      ),
    );
