import 'package:flutter/material.dart';
import 'package:islami/Mytheme.dart';
import 'package:islami/quran/SuraName.dart';
import 'package:islami/hadeeth.dart';
import 'package:islami/quran/quran.dart';
import 'package:islami/radio.dart';
import 'package:islami/tasbeeh.dart';

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
                'Islami',
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
                    label: 'radio'
                  ),
                  BottomNavigationBarItem(
                      icon:ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                      label: 'tasbeeh'
                  ),
                  BottomNavigationBarItem(
                      icon:ImageIcon(AssetImage('assets/images/icon_quran.png')),
                      label: 'quran'
                  ),
                  BottomNavigationBarItem(
                      icon:ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                      label: 'hadeth'
                  ),
                ],
              ),
            ),
            body: Tabs[selectedIndex])
      ],
    );
  }

  List<Widget> Tabs=[RadioScreen(),TasbeehScreen(),QuranScreen(),HadeethScreen()];
}
