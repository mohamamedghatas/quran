import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quran/home/detels/hadeth_detels.dart';
import 'package:quran/home/detels/sura_detels.dart';
import 'package:quran/home/theme/my_them_data.dart';
import 'package:quran/provider/my_provider.dart';

import 'home/home.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MYprovider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MYprovider>(context);
    return MaterialApp(
      themeMode: pro.apptheme,
    theme: MyThemeData.lightTheme,
    darkTheme: MyThemeData.darkTheme,

    debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName,
      routes: {

        HomeScreen.routeName:(context)=>HomeScreen(),
        suraDetels.routeName:(context)=>suraDetels(),
        hadethDetels_screen.routeName:(context) =>hadethDetels_screen(),
        }

    );
  }
}