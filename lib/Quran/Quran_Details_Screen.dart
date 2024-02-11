import 'package:flutter/material.dart';
import 'package:islami/Quran/Quran_Details.dart';

class Quran_Details_Screen extends StatelessWidget {
  String name;
  int index;
  Quran_Details_Screen({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(

      ' $name (${index+1}) ',
      textAlign:TextAlign.center,
      textDirection:  TextDirection.rtl ,

      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
