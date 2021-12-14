import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class MovieModel {
  final String? title;
  final String? image;
  final Icon? icon;
  final String? ratingNumber;
  final String? directorName;
  final String? writerName;
  final String? description;

  MovieModel({
    this.title,
    this.image,
    this.icon,
    this.ratingNumber,
    this.directorName,
    this.writerName,
    this.description,
  });
}

List<MovieModel> movieDataList = [
  MovieModel(
      title: 'Red Notice',
      image: 'assets/images/rednotice.jpg',
      icon: const Icon(
        Icons.star,
        color: yellow,
      ),
      ratingNumber: '8.8',
      description:
          'Red Notice is a 2021 American action comedy film written, directed, and produced by Rawson Marshall Thurber. Dwayne Johnson, who also served as a producer, stars as an FBI agent who reluctantly teams up with a renowned art thief (Ryan Reynolds) in order to catch an even more notorious criminal (Gal Gadot). The film marks the third collaboration between Thurber and Johnson, following Central Intelligence (2016) and Skyscraper (2018).',
      directorName: 'Rawson Marshall Thurber',
      writerName: 'Rawson Marshall Thurber'),
  MovieModel(
      title: 'Army of Thives',
      image: 'assets/images/armyofthieves.jpg',
      icon: const Icon(
        Icons.star,
        color: yellow,
      ),
      ratingNumber: '8.1',
      description:
          'Army of Thieves is a 2021 heist comedy film directed by Matthias Schweighöfer from a screenplay by Shay Hatten, based on a story he wrote with Zack Snyder. A prequel to Army of the Dead, it is the second installment in the Army of the Dead franchise; the film stars Schweighöfer, who reprises his role as Ludwig Dieter, alongside a supporting cast that includes Nathalie Emmanuel, Ruby O. Fee, Stuart Martin, Guz Khan, and Jonathan Cohen.',
      directorName: 'Matthias Schweighöfer',
      writerName: 'Zack Snyder and Shay Hatten'),
  MovieModel(
      title: 'Xtreme',
      image: 'assets/images/xtreme.jpg',
      icon: const Icon(
        Icons.star,
        color: yellow,
      ),
      ratingNumber: '8.2',
      description:
          'Xtreme (Spanish: Xtremo) is a 2021 Spanish action thriller and martial arts film directed by Daniel Benmayor, written by Teo García, Iván Ledesma and Genaro Rodríguez and starring Teo García, Óscar Jaenada, Sergio Peris-Mencheta and Óscar Casas',
      directorName: 'Daniel Benmayor',
      writerName: 'Teo García, Iván Ledesma and Genaro Rodríguez'),
  MovieModel(
      title: 'The Tomorrow War',
      image: 'assets/images/tomorowar.jpg',
      icon: const Icon(
        Icons.star,
        color: yellow,
      ),
      ratingNumber: '8.4',
      description:
          'The Tomorrow War is a 2021 American military science fiction action film directed by Chris McKay. The picture is produced by David Ellison, Dana Goldberg, Don Granger, David S. Goyer, Jules Daly, and Adam Kolbrenner, and written by Zach Dean. The ensemble cast features Chris Pratt, Yvonne Strahovski, J. K. Simmons, Betty Gilpin, Sam Richardson, Edwin Hodge, Jasmine Mathews, Ryan Kiera Armstrong, and Keith Powers. It follows a mix of present-day soldiers and civilians sent into the future to fight an alien army.',
      directorName: 'Chris McKay',
      writerName: 'Zach Dean'),
  MovieModel(
      title: 'Sweet Girl',
      image: 'assets/images/sweetgirl.jpg',
      icon: const Icon(
        Icons.star,
        color: yellow,
      ),
      ratingNumber: '8.3',
      description:
          'Sweet Girl is a 2021 American action thriller film directed by Brian Andrew Mendoza in his feature directorial debut and written by Philip Eisner and Gregg Hurwitz. The film stars Jason Momoa, Isabela Merced, Manuel Garcia-Rulfo, Adria Arjona, Raza Jaffrey, Justin Bartha, Lex Scott Davis, Michael Raymond-James and Amy Brenneman.',
      directorName: 'Brian Andrew Mendoza',
      writerName: 'Philip Eisner and Gregg Hurwitz'),
  MovieModel(
      title: 'The Unforgiveable',
      image: 'assets/images/unforgiveable.jpg',
      icon: const Icon(
        Icons.star,
        color: yellow,
      ),
      ratingNumber: '8.6',
      description:
          'The Unforgivable is a 2021 drama film directed by Nora Fingscheidt and written by Peter Craig, Hillary Seitz and Courtenay Miles,[2] based on the 2009 British miniseries Unforgiven written by Sally Wainwright. The film stars Sandra Bullock as a woman who attempts to rebuild her life after serving time in prison for committing a violent crime. It also stars Vincent D\'Onofrio, Jon Bernthal, Viola Davis, Richard Thomas, Linda Emond, Aisling Franciosi, Rob Morgan.',
      directorName: 'Nora Fingscheidt',
      writerName: 'Peter Craig, Hillary Seitz and Courtenay Miles'),
  MovieModel(
      title: 'Night Books',
      image: 'assets/images/nightbooks.jpg',
      icon: const Icon(
        Icons.star,
        color: yellow,
      ),
      ratingNumber: '8.2',
      description:
          'Nightbooks is a 2021 American dark fantasy film directed by David Yarovesky and written by Mikki Daughtry and Tobias Iaconis. The film stars Winslow Fegley, Lidya Jewett, and Krysten Ritter. Based on the 2018 horror-fantasy children\'s book of the same name by J. A. White, it was released September 15, 2021, on Netflix.',
      directorName: 'David Yarovesky',
      writerName: 'Mikki Daughtry and Tobias Iaconis'),
  MovieModel(
      title: 'Intrusion',
      image: 'assets/images/intrusion.jpg',
      icon: const Icon(
        Icons.star,
        color: yellow,
      ),
      ratingNumber: '8.6',
      description:
          'Intrusion is a 2021 American psychological thriller film directed by Adam Salky and written by Christopher Sparling, starring Freida Pinto and Logan Marshall-Green. It was released on September 22, 2021, by Netflix.',
      directorName: 'Adam Salky',
      writerName: 'Christopher Sparling'),
];
