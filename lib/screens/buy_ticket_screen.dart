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
            style: TextStyle(
                color: white.withOpacity(0.7),
                fontSize: 30,
                fontWeight: FontWeight.bold),
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
            'SCREEN',
            style: TextStyle(
                color: white.withOpacity(0.5),
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 9, crossAxisSpacing: 10, mainAxisSpacing: 25),
              itemBuilder: (_, int index) {
                return index == 0 ||
                        index == 1 ||
                        index == 7 ||
                        index == 8 ||
                        index == 52 ||
                        index == 53 ||
                        index == 46 ||
                        index == 45
                    ? const SizedBox()
                    : GestureDetector(
                        onTap: movieDataList[widget.index]
                                .reservedSeat!
                                .values
                                .contains(index)
                            ? null
                            : () {
                                setState(() {
                                  selectedList.contains(index)
                                      ? selectedList.remove(index)
                                      : selectedList.add(index);
                                });
                              },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: movieDataList[widget.index]
                                      .reservedSeat!
                                      .values
                                      .contains(index)
                                  ? white
                                  : selectedList.contains(index)
                                      ? red
                                      : seatColor),
                        ),
                      );
              },
              itemCount: 54,
              shrinkWrap: true,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(
                  seatType.length,
                  (index) => Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: seatTypeColor[index],
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Text(
                            seatType[index],
                            style: TextStyle(color: white.withOpacity(0.5)),
                          )
                        ],
                      ))
            ],
          )
        ],
      ),
    );
  }

  List seatTypeColor = [seatColor, white, red];
  List seatType = ['Available', 'Reserved', 'Selected'];

  List<int> selectedList = [];

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
