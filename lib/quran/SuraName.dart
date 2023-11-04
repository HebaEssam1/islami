import 'package:flutter/material.dart';
import 'package:islami/quran/SuraDetails.dart';

class SuraNamee extends StatelessWidget {

  String name;
  int index;
  SuraNamee({required this.name,required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SuraDetails.routeName,
          arguments: Sura(name: name, index: index));
        },
        child: Text(name,
        style: Theme.of(context).textTheme.subtitle1,textAlign:TextAlign.center,),
      ),


    );
  }
}
class Sura{
  String name;
  int index;
  Sura({required this.name,required this.index});
}