import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieModel {
  @required
  final String? title;
  @required
  final String? image;
  @required
  final Icon? icon;
  @required
  final String? ratingNumber;
  final String? directorName;
  final String? writerName;
  final String? description;

  MovieModel(
    this.title,
    this.image,
    this.icon,
    this.ratingNumber, {
    this.directorName,
    this.writerName,
    this.description,
  });
}

List<MovieModel> movieDataList = [
  MovieModel(
    'directorName',
    'writerName',
    Icon(Icons.star, ),
    ''
  )
];
