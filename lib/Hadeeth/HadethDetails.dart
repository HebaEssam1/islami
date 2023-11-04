import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Hadeeth/HadethItem.dart';
import 'package:islami/Hadeeth/hadeeth.dart';
import 'package:islami/Mytheme.dart';
import 'package:islami/quran/verses.dart';

import '../quran/SuraName.dart';

class HadethDetails extends StatefulWidget {

  static const routeName='Hadeth Details';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Hadeth;


    return Stack(
      children: [
      Image.asset(
      'assets/images/default_bg.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ),
    Scaffold(
    appBar: AppBar(
    title: Text(
    args.title,
    style: Theme.of(context).textTheme.headline1,
    ),
    centerTitle: true,
    ),
    body: Container(

      decoration: BoxDecoration(
          color:MyThemeData.whiteColor,
        borderRadius:BorderRadius.circular(24)
      ),
       margin: EdgeInsets.symmetric(horizontal: 24,vertical: 40),

      child:
      ListView.builder(
          itemBuilder: (context, index) {
              return HadethItem(text:args.content[index]);
          },


          itemCount:args.content.length),
    )
    )
    ]
    );
  }
}
