import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:quran/home/models/hadethModel.dart';

class AhadethDetelsProvider extends ChangeNotifier{
  List<hadethModel>allHadeth=[];
  loadHadethfile(){
    rootBundle.loadString('assets/files/ahadeth.txt').then((value) {
      List<String>ahadeth=value.split('#');
      for(int i=0;i<ahadeth.length;i++){
        String hadtheOne=ahadeth[i];
        List<String>hadethLine=hadtheOne.trim().split('\n');
        String title =hadethLine[0];
        hadethLine.removeAt(0);
        List<String> content=hadethLine;
        hadethModel HadethModel=hadethModel(title, content);

        allHadeth.add(HadethModel);
        print(allHadeth);
        notifyListeners();

      }
    });
  }
}