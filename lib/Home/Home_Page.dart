import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadethtab.dart';
import 'package:islami/Quran/Quran_tab.dart';
import 'package:islami/Radio/Radio_tab.dart';
import 'package:islami/Sebha/Sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Setting/setting.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  static String RouteName = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int Currentselect = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appcongif>(context);
    return Stack(
      children: [
        provider.isDark()
            ? Image(
                image: AssetImage("assets/images/bg.png"),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              )
            : Image(
                image: AssetImage("assets/images/bg3.png"),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
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
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(
                        "assets/images/quran-quran-svgrepo-com.png")),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/quran.png")),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),
              ],
            ),
          ),
          body: tabs[Currentselect],
        )
      ],
    );
  }

  List<Widget> tabs = [radio(), Sebha(), Hadeth(), Quran(), Setting_tab()];
}
