import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/sura_name.dart';

class HomeScreen extends StatelessWidget {
   static String routeName='home-page';
   List <String> Suras=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Stack(
       children: [
         Image.asset('assets/images/default_bg.png',
         width: double.infinity,
           height: double.infinity,
         fit: BoxFit.fill),
         Scaffold(
           appBar: AppBar(
             title: Text('Islami',
             style: Theme.of(context).textTheme.headline1,),
             centerTitle: true,
           ),
           body: Column(
             children: [
               Center(child: Image.asset('assets/images/qur2an_screen_logo.png')),
               Divider(
                 color: MyThemeData.primaryLight,
                 thickness: 2,
               ),
               Text('Sura Name',
               style: Theme.of(context).textTheme.subtitle1,),
               Divider(
                 color: MyThemeData.primaryLight,
                 thickness: 2,
               ),
               Expanded(
                 child: ListView.separated(
                   separatorBuilder:(context,index){
                     return  Divider(
                     color: MyThemeData.primaryLight,
                     thickness: 1,
                   );

                  },
                   itemBuilder: (context,index){

                      return SuraName(Name:Suras[index]);
                   },
                   itemCount: Suras.length

    )

                 ),

             ],
           ),
         )

       ],
    );
  }
}
