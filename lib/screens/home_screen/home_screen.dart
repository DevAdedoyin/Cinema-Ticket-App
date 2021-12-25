import 'package:flutter/material.dart';
import 'package:movie_ticket_app/screens/home_screen/tabs/home_tab/home_tab.dart';
import 'package:movie_ticket_app/screens/home_screen/tabs/ticket_tab/ticket_tab.dart';
import 'package:movie_ticket_app/state_manager/states.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_app/widgets/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _tabs = [
    const HomeTab(),
    const TicketTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Obx(() => _tabs[homeState.currentTab.value]),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
