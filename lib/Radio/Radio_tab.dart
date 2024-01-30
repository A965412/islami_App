import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class radio extends StatelessWidget {
  const radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
            height: 330,
            image: AssetImage(
              "assets/images/radio_photo.png",
            )),
        Container(
          margin: EdgeInsets.all(2),
          child: Text(
            "أذاعه القرآن الكريم",
            style: TextStyle(
                color: Color(0xff242424),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  iconSize: 38,
                  color: Mytheme.primarylight,
                  onPressed: () {},
                  icon: RotatedBox(
                      quarterTurns: 90, child: Icon(Icons.skip_next_sharp))),
              SizedBox(
                width: 18,
              ),
              IconButton(
                  iconSize: 38,
                  color: Mytheme.primarylight,
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow_sharp)),
              SizedBox(
                width: 18,
              ),
              IconButton(
                iconSize: 38,
                color: Mytheme.primarylight,
                onPressed: () {},
                icon: Icon(Icons.skip_next_sharp),
              ),
            ],
          ),
        )
      ],
    );
  }
}
