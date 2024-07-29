import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:quran/home/taps/ahageth_tab.dart';
import 'package:quran/home/taps/moshaf_tab.dart';
import 'package:quran/home/taps/radio_tab.dart';
import 'package:quran/home/taps/sepha_tab.dart';
import 'package:quran/home/taps/setinges_tab.dart';
import 'package:quran/provider/my_provider.dart';
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
    var pro =Provider.of<MYprovider>(context);
    return Stack(
fit: StackFit.expand,
      children:[

        Image.asset(
          pro.apptheme==ThemeMode.dark?"assets/images/home_dark.png"
              : 'assets/images/main_bg.png',fit: BoxFit.fill,),
        Scaffold(
          backgroundColor: Colors.transparent,

        appBar: AppBar(
          title: Text('islami'),

        ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: slectIndex,


onTap: (Index){
              slectIndex=Index;
              setState(() {

              });

},


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
