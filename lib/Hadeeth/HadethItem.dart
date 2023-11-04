import 'package:flutter/material.dart';

class HadethItem extends StatelessWidget {

   String text;
   HadethItem({required this.text});
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
