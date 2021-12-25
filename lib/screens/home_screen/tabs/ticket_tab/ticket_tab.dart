import 'package:flutter/material.dart';
import 'package:movie_ticket_app/screens/home_screen/tabs/ticket_tab/ticket_header.dart';
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
          TicketHeader()
        ],
      ),
    );
  }
}
