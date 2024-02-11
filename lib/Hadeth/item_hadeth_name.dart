import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadethtab.dart';
import 'package:islami/Hadeth/hadeth_Details.dart';
import 'package:islami/Quran/Quran_Details.dart';

class Item_hadeth_Name extends StatelessWidget {
  HHadeth hadeth;

  Item_hadeth_Name({required this.hadeth,});

  @override
  Widget build(BuildContext context) {
    return InkWell (
      onTap: (){
        Navigator.of(context).pushNamed(hadethDetails.RouteName,
        arguments: hadeth
        );


      },
      child: Text(
        hadeth.title,
        textAlign:TextAlign.center,

        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
