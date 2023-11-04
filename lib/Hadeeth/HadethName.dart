import 'package:flutter/material.dart';
import 'package:islami/Hadeeth/HadethDetails.dart';
import 'package:islami/quran/SuraDetails.dart';

import 'hadeeth.dart';

class HadethName extends StatelessWidget {

  Hadeth hadeth;
  HadethName({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(HadethDetails.routeName,
          arguments: hadeth);


        },
        child: Text(hadeth.title,
        style: Theme.of(context).textTheme.subtitle1,textAlign:TextAlign.center,),
      ),


    );
  }
}
