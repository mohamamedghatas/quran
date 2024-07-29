import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/home/theme/app_color.dart';

class MyThemeData{

  static ThemeData lightTheme=ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black,size: 30),
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize:30,fontWeight:FontWeight.w800,color:Colors.black87),centerTitle: true,),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(type: BottomNavigationBarType.fixed,selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.white,
          backgroundColor: AppColor.primaryColor,),
      textTheme: TextTheme(bodyLarge:
      GoogleFonts.elMessiri(
          fontSize:30,fontWeight:FontWeight.w800),

          bodyMedium: GoogleFonts.elMessiri(
              fontSize:25,fontWeight:FontWeight.w400,)

          ,bodySmall: GoogleFonts.elMessiri(
              fontSize:20,fontWeight:FontWeight.normal),
        titleLarge: GoogleFonts.elMessiri(
            fontSize:25,fontWeight:FontWeight.w700),


      )
,dividerTheme: DividerThemeData(color: AppColor.primaryColor,thickness: 3)

  );
  static ThemeData darkTheme=ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white,size: 30),
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize:30,fontWeight:FontWeight.w800,color:Colors.white),centerTitle: true,),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(type: BottomNavigationBarType.fixed,selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        backgroundColor: AppColor.primaryDark,),
      iconTheme: IconThemeData(color: AppColor.primaryColor),
      textTheme: TextTheme(bodyLarge:
      GoogleFonts.elMessiri(
          fontSize:30,fontWeight:FontWeight.w800,color:Colors.white),

        bodyMedium: GoogleFonts.elMessiri(
          fontSize:25,fontWeight:FontWeight.w400,color:Colors.yellow)

        ,bodySmall: GoogleFonts.elMessiri(
            fontSize:20,fontWeight:FontWeight.normal,color:Colors.white),
        titleLarge: GoogleFonts.elMessiri(
            fontSize:25,fontWeight:FontWeight.w700,color:Colors.white),



      ), dividerTheme: DividerThemeData(color: AppColor.primaryColor,thickness: 3));





}