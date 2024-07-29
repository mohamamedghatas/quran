import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quran/home/models/sura_model.dart';
import 'package:quran/home/theme/app_color.dart';
import 'package:quran/provider/my_provider.dart';
import 'package:quran/provider/sura_detels_provider.dart';
class suraDetels extends StatelessWidget {
  static const String routeName='suraDeetels';
  
   suraDetels({super.key});


  @override
  Widget build(BuildContext context) {
var model=ModalRoute.of(context)?.settings.arguments as suraModel;
var prov=Provider.of<MYprovider>(context);
 return ChangeNotifierProvider(
      create: (context) => SuraDetelsProvider() ,
      builder: (context, child) {
        var pro = Provider.of<SuraDetelsProvider>(context);
        if (pro.verses.isEmpty) {
    pro.loadSuraFiles(model.index);
    }
          return Container(
            decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage(prov.apptheme==ThemeMode.light?'assets/images/main_bg.png':"assets/images/home_dark.png"),
                fit: BoxFit.fill)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: Text(model.Name,
                ),
              ),
              body: Container(
                padding: EdgeInsets.all(18),
                margin: EdgeInsets.all(12),
                child: Card(color:prov.apptheme==ThemeMode.dark?AppColor.primaryDark
                    :Colors.white ,shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Text(pro.verses[index], style: Theme
                          .of(context)
                          .textTheme
                          .bodyLarge?.copyWith(color: Colors.amber), textAlign: TextAlign.center,);
                    }, itemCount: pro.verses.length,),
                  ),
                ),
              ),
            ),
          );
        }

    );



  }
}
