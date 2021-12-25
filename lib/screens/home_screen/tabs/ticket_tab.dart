import 'package:flutter/material.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class TicketTab extends StatefulWidget {
  const TicketTab({Key? key}) : super(key: key);

  @override
  _TicketTabState createState() => _TicketTabState();
}

class _TicketTabState extends State<TicketTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'My tickets',
                  style: TextStyle(
                      color: white, fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.pending_outlined,
                  color: white,
                  size: 24,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
