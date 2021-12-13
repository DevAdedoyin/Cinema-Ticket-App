import 'package:flutter/cupertino.dart';

class MovieModel {
  @required
  final title;
  @required
  final image;
  @required
  final icon;
  @required
  final ratingNumber;
  final directorName;
  final wirterName;
  final description;

  MovieModel(this.directorName, this.wirterName, this.description,
      {this.title, this.image, this.icon, this.ratingNumber});

  
}
