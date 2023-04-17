// To parse this JSON data, do
//
//     final itemlistmodel = itemlistmodelFromJson(jsonString);

import 'dart:convert';

Itemlistmodel itemlistmodelFromJson(String str) => Itemlistmodel.fromJson(json.decode(str));

String itemlistmodelToJson(Itemlistmodel data) => json.encode(data.toJson());

class Itemlistmodel {
  Itemlistmodel({
    this.bookItem,
    this.bookList,
  });

  String? bookItem;
  String? bookList;

  factory Itemlistmodel.fromJson(Map<String, dynamic> json) => Itemlistmodel(
    bookItem: json["book_item"],
    bookList: json["book_list"],
  );

  Map<String, dynamic> toJson() => {
    "book_item": bookItem,
    "book_list": bookList,
  };
}
