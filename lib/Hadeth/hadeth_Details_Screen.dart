import 'package:flutter/material.dart';

class hadeth_Details_Screen extends StatelessWidget {
 String Content;
  hadeth_Details_Screen({required this.Content});

  @override
  Widget build(BuildContext context) {
    return Text(

     Content,
      textAlign:TextAlign.center,


      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
