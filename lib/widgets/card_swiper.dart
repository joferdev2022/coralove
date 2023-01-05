import 'package:flutter/material.dart';
import 'package:cora_love/models/pictures.dart';
import 'package:card_swiper/card_swiper.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Pictures> futuro = [
      Pictures(title: '1', img: 'assets/sky-min.jpg'),
      Pictures(title: '2', img: 'assets/sea-min.jpg'),
      Pictures(title: '3', img: 'assets/sand-min.jpg'),
      Pictures(title: '4', img: 'assets/seven-min.jpg'),
    ];
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 80),
      width: double.infinity,
      height: size.height * 0.4,
      child: Swiper(
        itemCount: futuro.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder: (_, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: AssetImage(futuro[index].img),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
