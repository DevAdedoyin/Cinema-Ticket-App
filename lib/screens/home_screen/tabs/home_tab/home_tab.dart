import 'package:flutter/material.dart';
import 'package:movie_ticket_app/screens/home_screen/tabs/home_tab/home_header.dart';
import 'package:movie_ticket_app/screens/home_screen/tabs/home_tab/home_movies.dart';
import 'package:movie_ticket_app/screens/home_screen/tabs/home_tab/home_search.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Header(), HomeSearch(), HomeMovies()],
    );
  }
}
