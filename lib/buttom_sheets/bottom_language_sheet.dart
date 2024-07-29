import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/home/theme/app_color.dart';
import 'package:quran/provider/my_provider.dart';

class languageBottomSheet extends StatelessWidget {
  const languageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MYprovider>(context);
    return Container(
      decoration: BoxDecoration(
        color: pro.apptheme==ThemeMode.dark?AppColor.primaryDark:Colors.white,
      ),
      padding: EdgeInsets.all(14),


      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [


          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text('Arabic',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColor.primaryColor)),
              Icon(Icons.done),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,


            children: [
              Text('English'),
              Icon(Icons.done),



            ],
          ),


        ],
      ),
    );
  }
}
