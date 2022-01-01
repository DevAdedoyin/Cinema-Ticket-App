import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_app/models/movie_model.dart';
import 'package:movie_ticket_app/screens/movie_detail.dart';
import 'package:movie_ticket_app/widgets/ratings_and_imdb.dart';

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
            return index == 0
                ? Row(
                    children: [
                      const SizedBox(
                        width: 37,
                      ),
                      InkWell(
                        onTap: () => Get.to(() => MovieDetail(index)),
                        child: Hero(
                          tag: index,
                          transitionOnUserGestures: true,
                          child: _card(
                            movieDataList[0].image!,
                            movieDataList[0].ratingNumber!,
                          ),
                        ),
                      )
                    ],
                  )
                : InkWell(
                    onTap: () => Get.to(() => MovieDetail(index)),
                    child: Hero(
                      tag: index,
                      child: _card(
                        movieDataList[index].image!,
                        movieDataList[index].ratingNumber!,
                      ),
                    ),
                  );
          }),
    );
  }

  Widget _card(String img, String ratingNum) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 380,
        width: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              img,
              fit: BoxFit.fill,
              height: 380,
              width: 270,
            ),
          ),
          Positioned(
              top: 200,
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ratingsAndImdb(130, ratingNum)))
        ]),
      );
}
