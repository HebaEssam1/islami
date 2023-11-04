import 'package:flutter/material.dart';
import 'package:islami/quran/SuraDetails.dart';

class SuraNamee extends StatelessWidget {

  String name;
  SuraNamee({required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SuraDetails.routeName);
        },
        child: Text(name,
        style: Theme.of(context).textTheme.subtitle1,textAlign:TextAlign.center,),
      ),


    );
  }
}
