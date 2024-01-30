import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int Number = 0;

  String sebha = "سبحان الله ";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.rotate(
          angle: _angle * (3.14 / 180),
          child: Image(
              height: 370,
              image: AssetImage(
                "assets/images/body of seb7a.png",
              )),
        ),
        Container(
          margin: EdgeInsets.all(2),
          child: Text(
            "عدد التسبيحات",
            style: TextStyle(
                color: Color(0xff242424),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff0B7935F)),
                child: Center(
                    child: Text(
                  "$Number",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ))),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(80, 18),
                backgroundColor: Theme.of(context).primaryColor,
                textStyle: TextStyle(
                  color: Colors.white,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              onPressed: () {
                _rotateImage();
                Number++;
                setState(() {});
              },
              child: Text(
                sebha,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  double _angle = 0.0;

  void _rotateImage() {
    setState(() {
      _angle += 45.0;
    });
  }
}
