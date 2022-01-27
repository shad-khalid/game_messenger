import 'package:flutter/material.dart';
import 'package:game_messenger/src/serchingScreen/searching_screen.dart';
import 'package:game_messenger/src/waitingScreen/waitingScreen.dart';

class Routs extends StatefulWidget {
  const Routs({Key? key}) : super(key: key);

  @override
  _RoutsState createState() => _RoutsState();
}

class _RoutsState extends State<Routs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => waiting_screen_view(),
        '/searchingScreen': (context) => searching_screen_view(),
      },
    );
  }
}
