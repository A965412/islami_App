import 'package:flutter/material.dart';
import 'package:islami/Quran/Quran_Details.dart';

class Item_sura_Nmae extends StatelessWidget {
  String name;
  int index;

  Item_sura_Nmae({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Quran_Details.RouteName,
            arguments: Sura_args(name: name, index: index));
      },
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
