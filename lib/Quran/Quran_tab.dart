import 'package:flutter/material.dart';
import 'package:islami/Quran/quran_widget.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image(
              height: 220,
              image: AssetImage(
                "assets/images/Moshaf.png",
              )),
        ),
        Divider(),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("عدد الايات", style: Theme.of(context).textTheme.titleLarge),
              VerticalDivider(
                color: Theme.of(context).primaryColor,
                thickness: 3,
              ),
              Text("اسم السوره", style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
        ),
        Divider(),
        Expanded(
          child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return quran_widget();
              }),
        )
      ],
    );
  }
}
