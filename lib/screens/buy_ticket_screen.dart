import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/models/movie_model.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class BuyTicketScreen extends StatefulWidget {
  final int index;
  const BuyTicketScreen(this.index, {Key? key}) : super(key: key);

  @override
  State<BuyTicketScreen> createState() => _BuyTicketScreenState();
}

class _BuyTicketScreenState extends State<BuyTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            movieDataList[widget.index].title!,
            style: const TextStyle(
                color: white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, int? pos) {
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        _position = _position == pos ? null : pos;
                      });
                    },
                    child: timeCard(pos!));
              },
              itemCount: movieDataList[widget.index].showTime!.length,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 3,
            width: 270,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [white, backgroundColor]),
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20), right: Radius.circular(20))),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Screen',
            style: TextStyle(
                color: white.withOpacity(0.7),
                fontSize: 17,
                fontStyle: FontStyle.italic),
          ),
          
        ],
      ),
    );
  }

  int? _position;

  Widget timeCard(int pos) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        height: 80,
        width: 60,
        decoration: BoxDecoration(
            color: pos != _position ? backgroundColor : red,
            border: Border.all(color: white.withOpacity(0.2), width: 0.7),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Icon(
              Icons.access_time_outlined,
              size: 14,
              color: pos == _position ? white : white.withOpacity(0.5),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              movieDataList[widget.index].showTime![pos].split(' ').last,
              style: TextStyle(
                  color: pos == _position ? white : white.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              movieDataList[widget.index].showTime![pos].split(' ').first,
              style: TextStyle(
                  color: pos == _position
                      ? white
                      : white.withOpacity(
                          0.5,
                        ),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      );
}
