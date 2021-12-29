import 'package:flutter/material.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

Widget starRatings(String ratingNum) => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: yellow,
          size: 18,
        ),
        Text(
          ratingNum,
          style: const TextStyle(
              color: gold, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );

imdbRating() => Container(
      width: 65,
      height: 23,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: gold,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        'IMDB 7.5',
        style: TextStyle(fontWeight: FontWeight.bold, color: backgroundColor),
      ),
    );

Widget ratingsAndImdb(double margin, String ratingNum) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        starRatings(ratingNum),
        SizedBox(
          width: margin,
        ),
        imdbRating()
      ],
    );
