import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/quran/verses.dart';

import 'SuraName.dart';

class SuraDetails extends StatefulWidget {

  static const routeName='Sura Details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {

  List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Sura;
     if(verses.isEmpty){
       loadSura(args.index);
     }

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
    args.name,
    style: Theme.of(context).textTheme.headline1,
    ),
    centerTitle: true,
    ),
    body: Container(
    color:Colors.white,
      child:verses.isEmpty?
      Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).primaryColor,
        ),
      ):
      ListView.separated(
          itemBuilder: (context, index) {
              return Verses(text: verses[index]);
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2,
              color: Theme.of(context).primaryColor,
            );
          },
          itemCount: verses.length),
    )
    )
    ]
    );
  }

  Future<void> loadSura (int index) async {
    String content=await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> lines=content.split('\n');
    verses=lines;
    setState(() {

    });
  }
}
