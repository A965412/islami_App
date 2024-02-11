import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Hadeth/item_hadeth_name.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Hadeth extends StatefulWidget {

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<HHadeth> hadethlist = [];

  @override
  Widget build(BuildContext context) {
    if (hadethlist .isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Image(
          image: AssetImage(
              "assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png"),
          height: 220,
        ),
        Divider(
          thickness:  3,
        ),
        SizedBox(height:  8,),
        Text( AppLocalizations.of(context)!.hadeth_name,  style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height:  8,),

        Divider(
          thickness:  3,
        ),
        hadethlist.isEmpty ?
        Center(child:
        CircularProgressIndicator(
          color: Mytheme.primarylight,
        )
        )
            :
        Expanded(
          child: Center(
            child: ListView.separated(
              separatorBuilder: (context , index){
                return  Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 2,


                );
              },
              itemCount: hadethlist.length,
              itemBuilder: (context, index) {
                return Item_hadeth_Name(hadeth:hadethlist[index],);
              },
            ),
          ),
        )
      ],
    );
  }

  void loadFile() async{
    String Content =  await rootBundle.loadString('assets/files/ahadeth.txt');
    List <String> Ahadethlist =Content.split("#\r\n");
    for (int i =0 ; i< Ahadethlist.length ; i++) {
      List<String> hadethlines = Ahadethlist[i].split("\n");
      String Title = hadethlines[0];
      hadethlines.removeAt(0);
      HHadeth hadeth = HHadeth(title: Title, content: hadethlines);
      hadethlist.add(hadeth);
      setState(() {

      });
    }


  }
}
class HHadeth{
  String  title;
  List<String> content;
  HHadeth({required this.title , required this.content});
}
