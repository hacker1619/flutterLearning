import 'package:flutter/material.dart';

class Item{
  final String id;

  final String name;
  final int pricel;
  final String desc;
  final String color;
  final String image;

  Item(this.id, this.name, this.pricel, this.desc, this.color, this.image);


}
final products=[
Item("12", "iphone", 1234, "baba", "golden", "babsb")
];
