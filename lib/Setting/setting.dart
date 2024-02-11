import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Setting/languagebottomsheet.dart';
import 'package:islami/Setting/themebottomsheet.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class Setting_tab extends StatefulWidget {
  const Setting_tab({super.key});

  @override
  State<Setting_tab> createState() => _Setting_tabState();
}

class _Setting_tabState extends State<Setting_tab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appcongif>(context);

    return Container(
      margin: EdgeInsets.all(15),
      child:
      Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
        Text( AppLocalizations.of(context)!.language ,
        style: Theme.of(context).textTheme.titleLarge,),
        SizedBox(height: 15,),
        InkWell(
          onTap: (){
            showlanguageBottomsheet();
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Mytheme.primarylight ,
              borderRadius: BorderRadius.circular(20),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text( provider.appLanguage == "en" ?
              AppLocalizations.of(context)!.engilsh :
                   AppLocalizations.of(context)!.arabic ,


    style: Theme.of(context).textTheme.titleSmall,),
                Icon(Icons.arrow_drop_down,
                size: 30 ,)
              ],
            ),
          ),
        ) ,
          SizedBox(height: 30,),
          Text( AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleLarge,),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              showthemeeBottomsheet();
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Mytheme.primarylight ,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text( provider.isDark() ?
                  AppLocalizations.of(context)!.dark_mode :
                  AppLocalizations.of(context)!.light_mode ,


                    style: Theme.of(context).textTheme.titleSmall,),
                  Icon(Icons.arrow_drop_down,
                    size: 30 ,)
                ],
              ),
            ),
          ) ,


        ],),
    );
  }

  void showlanguageBottomsheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.white,
        context: context,
        builder: (context) =>  bottomsheet(

        ));


  }

  void showthemeeBottomsheet() {
    showModalBottomSheet(context: context,
        builder: (context)=>  theme_bottomsheet());
  }
}
