import 'package:flutter/material.dart';
import 'package:islami/Mytheme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class Verses extends StatelessWidget {

   String text;
   Verses({required this.text});
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(

      child:
      Text(text,
        style: Theme.of(context).textTheme.subtitle1,textAlign:TextAlign.center,),


    );
      ;
  }
}
