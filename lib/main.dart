import 'package:flutter/material.dart';
import 'package:islami/Hadeeth/HadethDetails.dart';
import 'package:islami/Home/Homepage.dart';
import 'package:islami/Mytheme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:islami/quran/SuraDetails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(child: const MyApp(),
    create: (context) => AppConfigProvider(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return MaterialApp(

      theme: MyThemeData.lightMode,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName:(context) => HadethDetails(),
      },
      initialRoute: HomePage.routeName,
       localizationsDelegates: AppLocalizations.localizationsDelegates,
       supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),


    );
  }
}

