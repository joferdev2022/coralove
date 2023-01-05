import 'package:flutter/material.dart';
import 'package:cora_love/screens/details.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [Page1(), DetailsScreen()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), MainContent()],
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/sky-min.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'TOGETHER',
            style: GoogleFonts.abhayaLibre(
                textStyle: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w800)),
          ),
          Text(
            '"Siempre luchando por un futuro juntos"',
            style: GoogleFonts.abhayaLibre(
                textStyle: TextStyle(
                    fontSize: 20,
                    color: Color(0xff2F3A4B),
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(child: Container()),
          Text(
            'deslizar',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
