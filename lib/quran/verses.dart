import 'package:flutter/material.dart';

class Verses extends StatelessWidget {

   String text;
   Verses({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Text(text,
        style: Theme.of(context).textTheme.subtitle1,textAlign:TextAlign.center,),


    );
      ;
  }
}
