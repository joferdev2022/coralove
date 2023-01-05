import 'package:flutter/material.dart';
import 'package:cora_love/widgets/movie_slider.dart';
import 'package:cora_love/widgets/card_swiper.dart';
import 'package:cora_love/widgets/background_color.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundColor(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CardSwiper(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buttonCustomed(
                        color: Color(0xff865CD0),
                        title: 'Futuro',
                      ),
                      buttonCustomed(
                        color: Color(0xff2F3A4B),
                        title: 'Pasado',
                      ),
                    ],
                  ),
                ),
                MovieSlider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class buttonCustomed extends StatelessWidget {
  final Color color;
  final String title;

  const buttonCustomed({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color, shape: StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child:
              Text(title, style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    );
  }
}
