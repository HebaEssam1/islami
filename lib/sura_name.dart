import 'package:flutter/material.dart';

class SuraName extends StatelessWidget {
  String Name;
  SuraName({required this.Name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(Name,
      style: Theme.of(context).textTheme.subtitle2,
      textAlign: TextAlign.center,),
    );
  }
}
