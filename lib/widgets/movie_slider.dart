import 'package:flutter/material.dart';

import '../models/pictures.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Pictures> futuro = [
      Pictures(
          pais: 'Mexico',
          img: 'assets/mexico.jpg',
          title: 'Hotel Xcaret',
          tipo: 'Hotel all in one',
          text:
              'Cupidatat ipsum id consequat est est. Veniam magna aute magna adipisicing. Fugiat minim exercitation quis id anim ea tempor est est eiusmod deserunt do ex consectetur. Laboris incididunt ea ut mollit commodo magna et laboris elit ea minim elit. Ipsum occaecat quis ut do irure fugiat fugiat aliquip sit consectetur nulla eu tempor dolore. Qui incididunt eu quis aliquip occaecat.'),
      Pictures(
          pais: 'Bolivia',
          img: 'assets/bolivia.jpg',
          title: 'Salares de Uyuni',
          tipo: 'Salar natural',
          text:
              'El Salar de Uyuni, en medio de los Andes en el sur de Bolivia, es la salina más grande del mundo. Es el legado de un lago prehistórico que se secó y dejó un paisaje desértico de casi 11,000 km cuadrados de sal blanca brillante, formaciones rocosas e islas con cactus.'),
      Pictures(
          pais: 'China',
          img: 'assets/china.jpg',
          title: 'Cultura China',
          tipo: 'cultural',
          text: ''),
      Pictures(
          pais: 'Corea',
          img: 'assets/corea.jpg',
          title: 'Cultura Coreana',
          tipo: 'Cultural',
          text: ''),
    ];

    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Futuros Viajes',
              style: TextStyle(
                color: Color(0xffF9FAFC),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: futuro.length,
              itemBuilder: (_, int index) {
                return Container(
                  width: 130,
                  height: 190,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'data_screen',
                            arguments: futuro[index]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: FadeInImage(
                            placeholder: AssetImage('assets/no-image.jpg'),
                            image: AssetImage(futuro[index].img),
                            width: 130,
                            height: 190,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        futuro[index].title,
                        style: TextStyle(color: Colors.white),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
