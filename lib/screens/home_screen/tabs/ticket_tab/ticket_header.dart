import 'package:flutter/material.dart';
import 'package:movie_ticket_app/themes.dart/colors.dart';

class TicketHeader extends StatelessWidget {
  const TicketHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 35),
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
    );
  }
}
