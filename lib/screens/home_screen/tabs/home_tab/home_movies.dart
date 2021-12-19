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
                      _card(movieDataList[0].image!)
                    ],
                  )
                : Transform.rotate(
                    angle: _angle!,
                    child: _card(
                      movieDataList[index].image!,
                    ),
                  );
          }),
    );
  }

  _card(String img) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 380,
        width: 270,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            img,
            height: 380,
            width: 270,
            fit: BoxFit.cover,
          ),
        ),
      );
}
