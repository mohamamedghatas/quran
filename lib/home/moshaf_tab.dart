import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/home/sura_model.dart';
import 'package:quran/sura_detels.dart';

class moshafhTab extends StatelessWidget {
   moshafhTab ({super.key});
List<String>sura=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
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
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(image: AssetImage('assets/images/Home_logo.png'),height: 227,),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Text('Sura_Name',textAlign: TextAlign.center,style:GoogleFonts.elMessiri(
          fontSize:25,fontWeight:FontWeight.w700,
        ) ,),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(thickness: 3,
              color: Color(0xffB7935F),
endIndent: 50,indent: 50,
              ),


            itemBuilder: (context, index) {
          
            return InkWell(

              onTap: (){
                Navigator.pushNamed(context,suraDetels.routeName,arguments:
                suraModel(sura[index], index)
                );


              },
              child: Center(child: Text(sura[index],style: GoogleFonts.elMessiri(
                fontSize:30,fontWeight:FontWeight.w700,
              ),)),
            );
          },itemCount: sura.length,),
        )
      ],
    );
  }
}
