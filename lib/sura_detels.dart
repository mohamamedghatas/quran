import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/home/sura_model.dart';

class suraDetels extends StatefulWidget {
  static const String routeName='suraDeetels';
  
   suraDetels({super.key});

  @override
  State<suraDetels> createState() => _suraDetelsState();
}

class _suraDetelsState extends State<suraDetels> {
List<String>verses=[];

  @override
  Widget build(BuildContext context) {
var model=ModalRoute.of(context)?.settings.arguments as suraModel;

if(verses.isEmpty  ) {
      loadSuraFiles(model.index);
    }

    return Container(
      decoration: BoxDecoration(image:DecorationImage(image:AssetImage('assets/images/main_bg.png'),fit: BoxFit.fill ) ),
      child: Scaffold(
backgroundColor: Colors.transparent,

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme:IconThemeData(size: 35) ,
          centerTitle: true,
          title: Text(model.Name,style:  GoogleFonts.elMessiri(
      fontSize:30,fontWeight:FontWeight.w700,),
        ),
        ),
        body: Container(
          padding: EdgeInsets.all(18),
          margin: EdgeInsets.all(12),
          child: Card(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            child: ListView.builder(itemBuilder:(context, index) {
              return Text(verses[index],style:  GoogleFonts.eagleLake(
                fontSize:30 ,fontWeight:FontWeight.w400,wordSpacing:3),textAlign: TextAlign.center,);
            },itemCount: verses.length,),
          ),
        ),
      ),
    );
  }

  loadSuraFiles(int index  )async{
   String SuraLoad=await rootBundle.loadString("assets/files/${index+1}.txt");
List<String>suraLines=SuraLoad.split("\n");
verses=suraLines;
print(suraLines);
setState(() {

});
  }
}
