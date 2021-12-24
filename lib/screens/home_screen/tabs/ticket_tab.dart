import 'package:flutter/material.dart';

class TicketTab extends StatefulWidget {
  const TicketTab({Key? key}) : super(key: key);

  @override
  _TicketTabState createState() => _TicketTabState();
}

class _TicketTabState extends State<TicketTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('Tickets')],
      ),
    );
  }
}
