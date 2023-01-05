import 'dart:convert';

class Pictures {
  String title;
  String? pais;
  String img;
  String? tipo;
  String? text;

  Pictures(
      {required this.title,
      required this.img,
      this.pais,
      this.tipo,
      this.text});

  factory Pictures.fromJson(String str) => Pictures.fromMap(json.decode(str));

  factory Pictures.fromMap(Map<String, dynamic> json) => Pictures(
        title: json["title"],
        pais: json["pais"],
        img: json["img"],
        text: json["text"],
        tipo: json["tipo"],
      );
}
