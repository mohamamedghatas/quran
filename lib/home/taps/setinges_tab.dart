import 'package:flutter/material.dart';
import 'package:quran/buttom_sheets/bottom_language_sheet.dart';
import 'package:quran/buttom_sheets/bottom_theme_sheet.dart';
import 'package:quran/home/theme/app_color.dart';

class settingTab extends StatelessWidget {
  const settingTab ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Text('Theme',style: Theme.of(context).textTheme.bodyLarge,),
          InkWell(
            onTap: (){

              showModalBottomSheet(context: context,


                  builder: (context) {
                return TheThemeBottomSheet();
              });
            },

            child: Container( 
                padding: EdgeInsets.all(11),
                decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: AppColor.primaryColor),
            ) ,child: Text('Light',style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize:34),)),
          ),
          SizedBox(
            height: 30,
          ),

          Text('anguage',style: Theme.of(context).textTheme.bodyLarge,),
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context, builder:(context){
                return  languageBottomSheet();
              } );
            },
            child: Container(
                padding: EdgeInsets.all(11),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: AppColor.primaryColor),
                ) ,child: Text('Arabic',style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize:34),)),
          ),

        ],
      ),
    );

  }
}
