import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/home/theme/app_color.dart';
import 'package:quran/provider/my_provider.dart';

class TheThemeBottomSheet extends StatelessWidget {
  const TheThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MYprovider>(context);
    return Container(

      decoration: BoxDecoration(color: pro.apptheme==ThemeMode.dark?AppColor.primaryDark:Colors.white),
      padding: EdgeInsets.all(14),


      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [


          InkWell(
            onTap: (){

              pro.changeTheme(ThemeMode.light);            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              children: [
                Text('Light',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: pro.apptheme==ThemeMode.dark?Colors.white: AppColor.primaryColor)),
            pro.apptheme==ThemeMode.dark?SizedBox():  Icon(Icons.done),
              ],
            ),
          ),
          SizedBox(height: 40,),
          InkWell(

            onTap: (){
              pro.changeTheme(ThemeMode.dark);

            },
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark',style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: pro.apptheme==ThemeMode.dark?
                      Colors.yellow:Colors.black87
                ),),
                pro.apptheme==ThemeMode.light?SizedBox():  Icon(Icons.done),



              ],
            ),
          ),


        ],
      ),
    );
  }
}
