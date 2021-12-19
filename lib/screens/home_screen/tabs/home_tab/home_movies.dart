import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movie_ticket_app/models/movie_model.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class HomeMovies extends StatefulWidget {
  const HomeMovies({Key? key}) : super(key: key);

  @override
  _HomeMoviesState createState() => _HomeMoviesState();
}

class _HomeMoviesState extends State<HomeMovies> {
  late ScrollController _controller;
  double? _angle = 0;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController();

    _controller.addListener(() {
      setState(() {
        if (_controller.position.maxScrollExtent ==
            _controller.position.pixels) {
          print('Last Bus-Stop');
          _angle = 0.2;
        } else {
          _angle = 0.0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: ListView.builder(
          controller: _controller,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: movieDataList.length,
          itemBuilder: (_, index) {
            print(_controller.offset);
            print(_angle);
            return index == 0
                ? Row(
                    children: [
                      const SizedBox(
                        width: 37,
                      ),
                      _card(
                        movieDataList[0].image!,
                        movieDataList[0].ratingNumber!,
                      )
                    ],
                  )
                : Transform.rotate(
                    angle: _angle!,
                    child: _card(
                      movieDataList[index].image!,
                      movieDataList[index].ratingNumber!,
                    ),
                  );
          }),
    );
  }

  _card(String img, String ratingNum) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 380,
        width: 270,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: white),
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              height: 380,
              width: 270,
            ),
          ),
          Positioned(
              top: 200,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: yellow,
                          size: 20,
                        ),
                        Text(
                          ratingNum,
                          style: const TextStyle(
                              color: gold,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    Container(
                      width: 65,
                      height: 23,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: gold,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'IMDB 7.5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: backgroundColor),
                      ),
                    )
                  ],
                ),
              ))
        ]),
      );
}
