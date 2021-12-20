import 'package:flutter/material.dart';
import 'package:movie_ticket_app/models/movie_model.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class MovieDetail extends StatelessWidget {
  final int index;
  const MovieDetail(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: 400,
              width: double.maxFinite,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Hero(
                  tag: index,
                  child: Image.asset(
                    movieDataList[index].image!,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
