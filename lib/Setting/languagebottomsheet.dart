import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class bottomsheet extends StatefulWidget {
  const bottomsheet({super.key});

  @override
  State<bottomsheet> createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appcongif>(context);

    return Container(
      height: 120,

      margin: EdgeInsets.all(15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        InkWell(
          onTap: (){
            provider.changelanguage("en");

          },
          child:provider.appLanguage == "en" ?
              getSelected(AppLocalizations.of(context)!.engilsh) :
              ungetSelected(AppLocalizations.of(context)!.engilsh)
              
        ),
        SizedBox(height: 15,),
        InkWell(
          onTap: (){
            provider.changelanguage("ar");
          },
          child:
                  provider.appLanguage == "ar" ?
                 getSelected(AppLocalizations.of(context)!.arabic) :
                 ungetSelected(AppLocalizations.of(context)!.arabic)
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
      style: Theme.of(context).textTheme.titleSmall,);

  }
}
