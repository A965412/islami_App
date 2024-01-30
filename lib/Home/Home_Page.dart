import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islami/Hadeth/Hadeth_tab.dart';
import 'package:islami/Quran/Quran_tab.dart';
import 'package:islami/Radio/Radio_tab.dart';
import 'package:islami/Sebha/Sebha_tab.dart';

class Home extends StatefulWidget {
  static String RouteName = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int Currentselect = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage("assets/images/bg3.png"),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                Currentselect = index;
                setState(() {});
              },
              currentIndex: Currentselect,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio.png")),
                    label: "Radio"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                    label: "Sebha"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(
                        "assets/images/quran-quran-svgrepo-com.png")),
                    label: "Hadeth"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/quran.png")),
                    label: "Quran"),
              ],
            ),
          ),
          body: tabs[Currentselect],
        )
      ],
    );
  }

  List<Widget> tabs = [
    radio(),
    Sebha(),
    Hadeth(),
    Quran(),
  ];
}
