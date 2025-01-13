import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName = "HadethScreen";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as HadethModel;

    var provider=Provider.of<MyProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        provider.mode == ThemeMode.light
        ?"assets/images/main_bg.png"
            : "assets/images/main_dark_bg.png",),),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(model.title,
            style: GoogleFonts.elMessiri(
            fontSize: 0,
            fontWeight: FontWeight.bold,
          ),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
              color: Color(0x80B7935F),
            child: ListView.builder(
                itemBuilder: (context,index){
              return Text(model.content[index],
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inder(
                  fontSize: 25,color: Colors.white,
                  fontWeight: FontWeight.w400),);
                },
            itemCount: model.content.length,
                  ),
          ),
        ),
      ),
    );
  }
}
