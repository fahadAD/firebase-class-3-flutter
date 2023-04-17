// To parse this JSON data, do
//
//     final postmodel = postmodelFromJson(jsonString);

import 'dart:convert';

Postmodel postmodelFromJson(String str) => Postmodel.fromJson(json.decode(str));

String postmodelToJson(Postmodel data) => json.encode(data.toJson());

class Postmodel {
  Postmodel({
    this.tittle,
    this.description,
    this.postId,
    this.subcat,
  });

  String? tittle;
  String? description;
  String? postId;
  String? subcat;

  factory Postmodel.fromJson(Map<String, dynamic> json) => Postmodel(
    tittle: json["tittle"],
    description: json["description"],
    postId: json["postID"],
    subcat: json["subcat"],
  );

  Map<String, dynamic> toJson() => {
    "tittle": tittle,
    "description": description,
    "postID": postId,
    "subcat": subcat,
  };
}
