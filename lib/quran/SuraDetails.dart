import 'package:flutter/material.dart';

class SuraDetails extends StatelessWidget {

  static const routeName='Sura Details';
  @override
  Widget build(BuildContext context) {
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
    'Islami',
    style: Theme.of(context).textTheme.headline1,
    ),
    centerTitle: true,
    ),
    body: Container(
    color:Colors.white,
    ))
    ]
    );
  }


}
