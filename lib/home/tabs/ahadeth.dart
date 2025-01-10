import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:islami_app/home/hadeth_Details.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
List<HadethModel>allAhadeth=[];

  @override
  Widget build(BuildContext context) {
if(allAhadeth.isEmpty){
  loadSuraFile();
}
return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/hadeth_bg.png",
          height: 219,
        ),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Text(
          "Ahadeth",
          textAlign: TextAlign.center,
          style: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),

        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,index)=>Divider(),
            itemBuilder: (context,index){
            return  InkWell(
              onTap: (){
                Navigator.pushNamed(context,HadethDetailsScreen.routName,
                    arguments: allAhadeth[index]);
              },
              child: Text(allAhadeth[index].title,
                textAlign:  TextAlign.center,
                style: GoogleFonts.inder(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),),
            );

          },
          itemCount: allAhadeth.length,
          ),
        )

      ],
    );
  }

  loadSuraFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((Value){

      List<String>ahadeth=Value.split("#");

      for(int i=0;i<ahadeth.length;i++){
        String hadethOne=ahadeth[i];

        List<String>hadethLines =hadethOne.trim().split("\n");

        String title=hadethLines[0];

        hadethLines.removeAt(0);
        List<String>content =hadethLines;

        HadethModel hadethModel =HadethModel(title, content);
        allAhadeth.add(hadethModel);
        print(hadethModel.title);
      }
setState(() {

});

    });
  }
}
