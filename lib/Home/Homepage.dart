import 'package:flutter/material.dart';
import 'package:islami/Mytheme.dart';
import 'package:islami/Settings/SettingsTab.dart';
import 'package:islami/quran/SuraName.dart';
import 'package:islami/Hadeeth/hadeeth.dart';
import 'package:islami/quran/quran.dart';
import 'package:islami/radio.dart';
import 'package:islami/tasbeeh.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  static const String routeName='Home page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;

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
                AppLocalizations.of(context)!.islami,
                style: Theme.of(context).textTheme.headline1,
              ),
              centerTitle: true,
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(canvasColor:Theme.of(context).primaryColor),
              child: BottomNavigationBar(
                currentIndex:selectedIndex ,
                onTap: (index){
                  selectedIndex=index;
                  setState(() {

                  });
                },
                items: [
                  BottomNavigationBarItem(

                      icon:ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label:AppLocalizations.of(context)!.radio,
                  ),
                  BottomNavigationBarItem(
                      icon:ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                      label: AppLocalizations.of(context)!.tasbeeh
                  ),
                  BottomNavigationBarItem(
                      icon:ImageIcon(AssetImage('assets/images/icon_quran.png')),
                      label: AppLocalizations.of(context)!.quran
                  ),
                  BottomNavigationBarItem(
                      icon:ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                      label: AppLocalizations.of(context)!.hadeeth
                  ),
                  BottomNavigationBarItem(
                      icon:Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.settings
                  ),
                ],
              ),
            ),
            body: Tabs[selectedIndex])
      ],
    );
  }

  List<Widget> Tabs=[RadioScreen(),TasbeehScreen(),QuranScreen(),HadeethScreen(),SettingsTab()];
}
