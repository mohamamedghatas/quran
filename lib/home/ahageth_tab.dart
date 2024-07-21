import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/home/hadethModel.dart';
import 'package:quran/home/hadeth_detels.dart';

class ahadethTab extends StatefulWidget {


   ahadethTab({super.key});

  @override
  State<ahadethTab> createState() => _ahadethTabState();
}

class _ahadethTabState extends State<ahadethTab> {
  List<hadethModel>allHadeth=[];
  void initState(){
    super.initState();
    loadHadethfile();
  }

  @override
  Widget build(BuildContext context) {
   
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/hadeth_logo.png',height: 219,),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),

        ),
        Text('Ahadeth',textAlign: TextAlign.center,style:GoogleFonts.elMessiri(
    fontSize:25,fontWeight:FontWeight.w700,
    ) ,), Divider(
          thickness: 3,
          color: Color(0xffB7935F),

        ),Expanded(
          child: ListView.separated(
    separatorBuilder: (context, index) => Divider(thickness: 2,),
    itemBuilder: (context, index){
            return InkWell(
              onTap:(){
                Navigator.pushNamed(context, hadethDetels_screen.routeName,arguments: allHadeth[index]);

              } ,
              child: Text(allHadeth[index].title,textAlign:TextAlign.center,style:GoogleFonts.elMessiri(
              fontSize:25,fontWeight:FontWeight.w700)),
            );

          },itemCount: allHadeth.length,),
        )


      ],


    );
  }
 loadHadethfile(){
    rootBundle.loadString('assets/files/ahadeth.txt').then((value) {
      List<String>ahadeth=value.split('#');
     for(int i=0;i<ahadeth.length;i++){
       String hadtheOne=ahadeth[i];
       List<String>hadethLine=hadtheOne.trim().split('\n');
       String title =hadethLine[0];
       hadethLine.removeAt(0);
       List<String> content=hadethLine;
       hadethModel HadethModel=hadethModel(title, content);

       allHadeth.add(HadethModel);
       setState(() {

       });
     }
    });
  }}
