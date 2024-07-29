import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SuraDetelsProvider extends ChangeNotifier{
List<String>verses=[];
  loadSuraFiles(int index  )async{
    String SuraLoad=await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String>suraLines=SuraLoad.split("\n");
    verses=suraLines;
    print(suraLines);
    notifyListeners();

  }

}