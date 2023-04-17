// To parse this JSON data, do
//
//     final bookjson = bookjsonFromJson(jsonString);

import 'dart:convert';

Bookjson bookjsonFromJson(String str) => Bookjson.fromJson(json.decode(str));

String bookjsonToJson(Bookjson data) => json.encode(data.toJson());

class Bookjson {
  Bookjson({
    this.id,
    this.image,
    this.name,
  });

  String? id;
  String? image;
  String? name;

  factory Bookjson.fromJson(Map<String, dynamic> json) => Bookjson(
    id: json["id"],
    image: json["image"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
  };
}

