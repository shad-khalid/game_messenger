import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class searching_screen_view extends StatefulWidget {
  const searching_screen_view({Key? key}) : super(key: key);
  @override
  _searching_screen_viewState createState() => _searching_screen_viewState();
}

class _searching_screen_viewState extends State<searching_screen_view> {
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
                    'Searching...',
                    style: GoogleFonts.mulish(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
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
              Container(
                height: 348,
                width: 303,
                margin: EdgeInsets.only(
                  top: 120,
                ),
                decoration: BoxDecoration(
                    color: Color(0xffD2D1D1),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Container(
                      width: 240,
                      child: Text(
                        'Searching for an opponent to play the game with ...',
                        style: GoogleFonts.mulish(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      margin: EdgeInsets.only(
                        top: 30,
                      ),
                    ),
                    // container for the magnify

                    Container(
                      margin: EdgeInsets.only(top: 25),
                      height: 150,
                      width: 200,
                      child: Image(
                        image: AssetImage('assets/magnifire.png'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class IconAnimation extends StatefulWidget {
//   const IconAnimation({Key? key}) : super(key: key);

//   @override
//   _IconAnimationState createState() => _IconAnimationState();
// }

// class _IconAnimationState extends State<IconAnimation>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _Controller =
//       AnimationController(vsync: this, duration: const Duration(seconds: 1))
//           .repeat(reverse: true) as AnimationController;

//   late Animation<Offset> _animationVertical =
//       Tween(begin: Offset.zero, end: Offset(0.1, 0.9)).animate(_Controller);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SlideTransition(
//           position: _animationVertical,
//           child: Image(
//             height: 150,
//             width: 200,
//             image: AssetImage(
//               'assets/magnifire.png',
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
