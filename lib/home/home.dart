import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/home/ahageth_tab.dart';
import 'package:quran/home/moshaf_tab.dart';
import 'package:quran/home/radio_tab.dart';
import 'package:quran/home/sepha_tab.dart';
import 'package:quran/home/setinges_tab.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName='Home';
   HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int slectIndex=0;

  @override
  Widget build(BuildContext context){
    return Stack(
fit: StackFit.expand,
      children:[

        Image.asset('assets/images/main_bg.png',fit: BoxFit.fill,),
        Scaffold(
          backgroundColor: Colors.transparent,

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text('islami',style:GoogleFonts.elMessiri(
            fontSize:30,fontWeight:FontWeight.w700,
          ) ,),

        ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: slectIndex,


onTap: (Index){
              slectIndex=Index;
              setState(() {

              });

},
type: BottomNavigationBarType.fixed,
selectedItemColor: Colors.black87,
            unselectedItemColor: Colors.white,
            backgroundColor: Color(0xffB7935F),
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf_gold.png'),size: 30,),label: ''),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran-quran-svgrepo-com.png'),size: 30,),label:'' ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha_blue.png'),size: 30,),label: ''),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio_blue.png'),size: 30,),label:'' ),
           BottomNavigationBarItem(icon: Icon(Icons.settings),label: ''),
            ],

          ),
          body: tabs[slectIndex],
      ),
    ]);

  }
  List<Widget>tabs=[
    moshafhTab(),
    ahadethTab(),
    sebhaTab(),
    radioTab(),
    settingTab(),



  ];
}
