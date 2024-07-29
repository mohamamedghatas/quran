import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quran/home/detels/hadeth_detels.dart';
import 'package:quran/home/models/hadethModel.dart';
import 'package:quran/provider/ahadeth_detels_provider.dart';

class ahadethTab extends StatefulWidget {


   ahadethTab({super.key});

  @override
  State<ahadethTab> createState() => _ahadethTabState();
}

class _ahadethTabState extends State<ahadethTab> {



  @override
  Widget build(BuildContext context) {
   
    return ChangeNotifierProvider(
      create:(context) => AhadethDetelsProvider() ,builder: (context, child) {
        var prov=Provider.of<AhadethDetelsProvider>(context);
        if (prov.allHadeth.isEmpty) {
          prov.loadHadethfile();
        }
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
                separatorBuilder: (context, index) => Divider(indent: 50,endIndent: 50,thickness: 2,),
                itemBuilder: (context, index){
                  return InkWell(
                    onTap:(){
                      Navigator.pushNamed(context, hadethDetels_screen.routeName,arguments:hadethModel(prov.allHadeth[index].title,prov.allHadeth[index].content ));

                    } ,
                    child: Text(prov.allHadeth[index].title,textAlign:TextAlign.center,style:Theme.of(context).textTheme.titleLarge,),
                  );

                },itemCount: prov.allHadeth.length,),
            )


          ],


        );
      },

    );
  }
}
