import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Settings/Language_bottom_sheet.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import 'Theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {


  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(
      padding:EdgeInsets.all(10) ,
      margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language,
          style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(height: 10,),
           InkWell(
             onTap:() {
               showLanguageBottomSheet();
             },
             child: Container(
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color: Theme.of(context).primaryColor,),
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                      Text(provider.appLanguage=='en' ?AppLocalizations.of(context)!.english:
                      AppLocalizations.of(context)!.arabic,
                      style: Theme.of(context).textTheme.headline2,),
                   Icon(Icons.arrow_drop_down,color: Colors.white,)
                 ],
               ),
             ),
           ),
          Text(AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(height: 10,),
          InkWell(
            onTap:() {
              showthemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.apptheme== ThemeMode.light?AppLocalizations.of(context)!.light:
                  AppLocalizations.of(context)!.dark,
                    style: Theme.of(context).textTheme.headline2,),
                  Icon(Icons.arrow_drop_down,color: Colors.white,)
                ],
              ),
            ),
          )


        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context,
                         builder: (context) => Language_bottom_sheet(),);

  }

  void showthemeBottomSheet() {
    showModalBottomSheet(context: context,
      builder: (context) => Theme_bottom_sheet(),);
  }
}
