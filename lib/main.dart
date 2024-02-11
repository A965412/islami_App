import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_Details.dart';
import 'package:islami/Home/Home_Page.dart';
import 'package:islami/Quran/Quran_Details.dart';
import 'package:islami/main.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Appcongif(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appcongif>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.RouteName,
      routes: {
        Home.RouteName: (context) => Home(),
        Quran_Details.RouteName: (context) => Quran_Details(),
        hadethDetails.RouteName: (context) => hadethDetails(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      theme: Mytheme.lightmode,
      darkTheme: Mytheme.darktmode,
      themeMode: provider.apptheme,
    );
  }
}
