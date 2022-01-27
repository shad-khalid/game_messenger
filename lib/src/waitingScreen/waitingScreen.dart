import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class waiting_screen_view extends StatefulWidget {
  const waiting_screen_view({Key? key}) : super(key: key);

  @override
  _waiting_screen_viewState createState() => _waiting_screen_viewState();
}

class _waiting_screen_viewState extends State<waiting_screen_view> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Waiting',
                    style: GoogleFonts.mulish(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: Icon(Icons.add),
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              // container for the middle box
              Container(
                height: 348,
                width: 303,
                margin: EdgeInsets.only(top: 120),
                decoration: BoxDecoration(
                    color: Color(0xffD2D1D1),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Container(
                      width: 260,
                      child: Text(
                          'Waiting for the opponent  to accept the game ...',
                          style: GoogleFonts.mulish(
                              fontSize: 26, fontWeight: FontWeight.bold)),
                      margin: EdgeInsets.only(top: 30),
                    ),
                    // container for the future and circule indicator
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: FutureBuilder(
                        future: gettingData(),
                        builder: (context, snpashot) {
                          if (!snpashot.hasData) {
                            return SpinKitRing(
                              size: 130,
                              color: Colors.blue,
                            );
                          } else if (snpashot.hasError) {
                            return Text(snpashot.error.toString());
                          } else {
                            return Text(snpashot.data.toString());
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<String> gettingData() async {
  await Future.delayed(Duration(seconds: 5));
  return '';
}
