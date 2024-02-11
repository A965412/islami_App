import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Hadeth/hadethtab.dart';
import 'package:islami/Hadeth/hadeth_Details_Screen.dart';
import 'package:islami/Quran/Quran_Details_Screen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class hadethDetails extends StatefulWidget {
  static String RouteName =" hadeth_Details";

  @override
  State<hadethDetails> createState() => _hadethDetailsState();
}

class _hadethDetailsState extends State<hadethDetails> {

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HHadeth;
    var provider = Provider.of<Appcongif>(context);



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
                    "${args.title}",
                     style: Theme.of(context).textTheme.titleLarge,
                   ),
                           ),
                 body:
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
                   child: ListView.builder(

                     itemBuilder: (context , index){

                     return hadeth_Details_Screen(Content :args.content[index]);
                   },
                itemCount:  args.content.length,
                   ),
                 ),
                   ),

                  ],

    );
  }

}
