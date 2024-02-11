import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class theme_bottomsheet extends StatefulWidget {
  const theme_bottomsheet({super.key});

  @override
  State<theme_bottomsheet> createState() => _theme_bottomsheetState();
}

class _theme_bottomsheetState extends State<theme_bottomsheet> {
   late Appcongif provider  ;

  @override
  Widget build(BuildContext context) {
 provider = Provider.of<Appcongif>(context);

    return Container(
      height: 118,

      margin: EdgeInsets.all(15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        InkWell(
          onTap: (){
            provider.changetheme(ThemeMode.dark);

          },
          child:provider.isDark() ?
              getSelected(AppLocalizations.of(context)!.dark_mode) :
              ungetSelected(AppLocalizations.of(context)!.dark_mode)

        ),
        SizedBox(height: 15,),
        InkWell(
          onTap: (){
            provider.changetheme(ThemeMode.light);
          },
            child:provider.apptheme == ThemeMode.light ?
            getSelected(AppLocalizations.of(context)!.light_mode) :
            ungetSelected(AppLocalizations.of(context)!.light_mode)
        )

      ],),

    );
  }
  Widget getSelected(String text){
    return Row
      (
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text( text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold

          ),),
        Icon(Icons.check ,
          size: 35,
          color: Theme.of(context).primaryColor,)
      ],
    );

  }
  Widget ungetSelected(String text){
    return Text( text,

      style: provider.isDark()?
      Theme.of(context).textTheme.titleSmall?.copyWith(
        color: Mytheme .blackcolor) :

      Theme.of(context).textTheme.titleSmall,);

  }
}
