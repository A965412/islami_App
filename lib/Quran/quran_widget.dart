import 'package:flutter/material.dart';

class quran_widget extends StatelessWidget {
  const quran_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "286",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.normal),
            ),
            VerticalDivider(
              color: Theme.of(context).primaryColor,
              thickness: 3,
            ),
            Text(
              "البقره",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
