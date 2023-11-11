import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Mytheme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
class Language_bottom_sheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                provider.changeLanguage('en');
              },
              child: provider.appLanguage=='en'?
                  selectedItem(text: AppLocalizations.of(context)!.english):
                  unselectedItem(text: AppLocalizations.of(context)!.english)
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: () {
                provider.changeLanguage('ar');
              },
                child: provider.appLanguage=='ar'?
                selectedItem(text: AppLocalizations.of(context)!.arabic):
                unselectedItem(text: AppLocalizations.of(context)!.arabic)
            )
          ],
        )
    );
  }
}
class selectedItem extends StatelessWidget {
   String text;
   selectedItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(text,
        style: Theme.of(context).textTheme.headline3,),
        Icon(Icons.check, color: MyThemeData.primaryLight,)
      ],
    );
  }
}
class unselectedItem extends StatelessWidget {
  String text;
  unselectedItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text(text,
        style: Theme.of(context).textTheme.subtitle2,),

      ],
    );
  }
}
