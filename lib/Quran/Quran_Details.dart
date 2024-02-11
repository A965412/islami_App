import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Quran/Quran_Details_Screen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class Quran_Details extends StatefulWidget {
  static String RouteName =" QUran_Deyails";

  @override
  State<Quran_Details> createState() => _Quran_DetailsState();
}

class _Quran_DetailsState extends State<Quran_Details> {
  List <String> Verses =[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Sura_args;
    var provider = Provider.of<Appcongif>(context);

    if (Verses.isEmpty){
    loadFile(args.index);
  }

    return   Stack(
        children: [
          provider.isDark() ?
          Image(
            image: AssetImage("assets/images/bg.png"),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ) :
          Image(
            image: AssetImage("assets/images/bg3.png"),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
               Scaffold(
                 appBar: AppBar(
                   title: Text(
                    "${args.name}",
                     style: Theme.of(context).textTheme.titleLarge,
                   ),
                           ),
                 body:
                     Verses.isEmpty ?
                         CircularProgressIndicator()
                         :
                 Container(
                   margin: EdgeInsets.symmetric(
                     vertical: MediaQuery.of(context).size.height*0.06,
                     horizontal:MediaQuery.of(context).size.width *0.0,
                   ),
                   decoration: BoxDecoration(
                     color: provider.isDark()?
                         Mytheme.primarydark
                         :
        Mytheme.primarylight ,

                     borderRadius: BorderRadius.circular(40),


                   ),
                   child: ListView.separated(
                     separatorBuilder: (context , index){
                        return  Divider(
                         color: Theme.of(context).primaryColor,
                         thickness: 2,


                       );
                     },
                     itemBuilder: (context , index){

                     return Quran_Details_Screen(name :Verses[index],
                     index: index,);
                   },
                itemCount:  Verses.length, ),
                 ),
                   ),

                  ],

    );
  }

  void loadFile(int index) async {
    String Content =  await rootBundle.loadString("assets/files/${index+1}.txt");
 List <String> lines = Content.split('\n');
 Verses = lines;
 setState(() {

 });


  }
}
class Sura_args{
  String name;
  int index;
  Sura_args({
    required this.name , required this.index
});
}
