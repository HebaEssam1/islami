import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Hadeeth/HadethName.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../Mytheme.dart';

class HadeethScreen extends StatefulWidget {

  @override
  State<HadeethScreen> createState() => _HadeethScreenState();
}

class _HadeethScreenState extends State<HadeethScreen> {
  List <Hadeth> Ahadeth=[];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    if(Ahadeth.isEmpty){
      loadHadeth();
    }

    return Column(
      children: [
        Image.asset('assets/images/hadeth_logo.png'),
        Divider(
          thickness: 2,
          color: provider.apptheme==ThemeMode.light?
          Theme.of(context).primaryColor
              :MyThemeData.yellowColor,
        ),
        Text(AppLocalizations.of(context)!.hadeeth_name, style: Theme.of(context).textTheme.subtitle1),
        Divider(
          thickness: 2,
          color: provider.apptheme==ThemeMode.light?
          Theme.of(context).primaryColor
              :MyThemeData.yellowColor,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return HadethName(hadeth:Ahadeth[index]);
              },
              separatorBuilder: (context,index) {
               return Divider(
                  thickness: 1,
                 color: provider.apptheme==ThemeMode.light?
                 Theme.of(context).primaryColor
                     :MyThemeData.yellowColor,
                );
              },
              itemCount: Ahadeth.length),
        )

      ],
    );
  }

  Future<void> loadHadeth() async {
    String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List <String> allAhadeth=fileContent.split('#\r\n');
    for(int i=0;i<allAhadeth.length;i++){
      List<String> eachHadeth=allAhadeth[i].split('\n');
      String title=eachHadeth[0];
      eachHadeth.removeAt(0);
      Hadeth hadeth=Hadeth(title: title, content: eachHadeth);
      Ahadeth.add(hadeth);
      setState(() {

      });
    }
  }
}
class Hadeth{
  String title;
  List <String> content;
  Hadeth({required this.title,required this.content});
}