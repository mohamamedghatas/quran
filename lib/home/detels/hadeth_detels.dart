import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quran/home/models/hadethModel.dart';
import 'package:quran/provider/ahadeth_detels_provider.dart';

class hadethDetels_screen extends StatelessWidget {

  const hadethDetels_screen({super.key});
static const String routeName='hageth_detels';
  @override
  Widget build(BuildContext context) {

    var model=ModalRoute.of(context)?.settings.arguments as hadethModel;
    return ChangeNotifierProvider(
      create: (context) => AhadethDetelsProvider(),
      builder: (context, child) {
        var prov=Provider.of<AhadethDetelsProvider>(context);

        return  Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/main_bg.png'),fit: BoxFit.fill )),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(model.title),
            ),
            body:

            Padding(
              padding: const EdgeInsets.all(18),
              child: Card(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(11),
                    child: Text(model.content[index],textDirection: TextDirection.rtl,textAlign:TextAlign.center,style: Theme.of(context).textTheme.bodyMedium),
                  );
                },itemCount: model.content.length),
              ),
            ),
          ),
        );
      },

    );
  }
}
