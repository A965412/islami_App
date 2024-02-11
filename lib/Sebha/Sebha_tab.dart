import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int count = 0;

  String sebha = " ";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            _rotateImage();
            _incrementCount();
            setState(() {});
          },
          child: Transform.rotate(
            angle: _angle * (3.14 / 180),
            child: Image(
                height: 370,
                image: AssetImage(
                  "assets/images/body of seb7a.png",
                )),
          ),
        ),
        Container(
          margin: EdgeInsets.all(2),
          child: InkWell(
            onTap: () {
              clean();
              setState(() {});
            },
            child: Text("عدد التسبيحات",
                style: Theme.of(context).textTheme.titleLarge),
          ),
        ),
        Column(
          children: [
            Container(
                width: 50,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff0B7935F)),
                child: Center(
                    child: Text(
                  "$count",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ))),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text("$sebha",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 27)),
              ),
            ),
          ],
        )
      ],
    );
  }

  double _angle = 0.0;

  void _rotateImage() {
    setState(() {
      _angle += 20.0;
    });
  }

  void _incrementCount() {
    setState(() {
      count++;
      if (count <= 33) {
        sebha = 'سبحان الله';
      } else if (count > 33 && count <= 66) {
        sebha = 'الحمد لله';
      } else if (count > 67 && count <= 99) {
        sebha = 'الله اكبر';
      } else if (count > 99 && count <= 100) {
        sebha = 'لا اله الا الله';
      } else if (count > 101 && count <= 200) {
        sebha = 'سبحان الله وبجمده';
      }
    });
  }

  void clean() {
    count = 0;
    sebha = "";
  }
}
