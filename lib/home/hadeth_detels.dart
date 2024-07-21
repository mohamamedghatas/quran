import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/home/hadethModel.dart';

class hadethDetels_screen extends StatelessWidget {

  const hadethDetels_screen({super.key});
static const String routeName='hageth_detels';
  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as hadethModel;
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/main_bg.png'),fit: BoxFit.fill )),
      child: Scaffold(
backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(model.title,textAlign:TextAlign.center,style:GoogleFonts.elMessiri(
              fontSize:30,fontWeight:FontWeight.w800)),
        ),
        body:

        Padding(
          padding: const EdgeInsets.all(18),
          child: Card(
            child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(11),
                child: Text(model.content[index],textDirection: TextDirection.rtl,textAlign:TextAlign.center,style:GoogleFonts.inter(
                    fontSize:20,fontWeight:FontWeight.w400)),
              );
            },itemCount: model.content.length,),
          ),
        ),
      ),
    );
  }
}
