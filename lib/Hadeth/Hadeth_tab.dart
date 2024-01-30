import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_Widget.dart';

class Hadeth extends StatelessWidget {
  const Hadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(
              "assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png"),
          height: 220,
        ),
        Divider(),
        Text("الأحاديث", style: Theme.of(context).textTheme.titleLarge),
        Divider(),
        Expanded(
          child: Center(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, itemCount) {
                  return hadeth_widget();
                }),
          ),
        )
      ],
    );
  }
}
