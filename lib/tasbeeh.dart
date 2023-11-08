import 'package:flutter/material.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'package:islami/Mytheme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class TasbeehScreen extends StatefulWidget {

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  String Count='0';

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(
        child: provider.apptheme==ThemeMode.light?
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/head_sebha_logo.png',
                height: 70),
            Image.asset('assets/images/body_sebha_logo.png',
              height: 150,),
        ],
      ):
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/head_sebha_dark.png',
                height: 70),
            Image.asset('assets/images/body_sebha_dark.png',
              height: 150,),
          ],
        )
    ),


          SizedBox(height:10),
          Text(AppLocalizations.of(context)!.number_tasbeeh,style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(height:20),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Theme.of(context).primaryColor
            ),
            child:
            Text(Count,style: Theme.of(context).textTheme.subtitle1,),

          ),
          SizedBox(height:20),
          ElevatedButton(style: ElevatedButton.styleFrom(
    primary: provider.apptheme==ThemeMode.light ?
    MyThemeData.primaryLight :
    MyThemeData.yellowColor ),


              onPressed: () => CounterIncrement(),
               child: Text('سبحان الله',
              style: Theme.of(context).textTheme.headline4,
               ))
        ],
      );
  }

  int counter=0;

  CounterIncrement() {
    counter++;
    Count=counter.toString();
    setState(() {

    });
  }
}
