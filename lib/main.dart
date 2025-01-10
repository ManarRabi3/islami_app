import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/hadeth_Details.dart';
import 'package:islami_app/home/home.dart';
import 'package:islami_app/my_theme_data.dart';

import 'sura_details.dart';

void main(){
  runApp(MyApp());}

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme:MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,

        initialRoute:HomeScreen.routeName ,
        routes: {
          HomeScreen.routeName:(context)=>HomeScreen(),
          SuraDetailsScreen.routName:(context)=>SuraDetailsScreen(),
          HadethDetailsScreen.routName:(context)=>HadethDetailsScreen(),

        }
        ,
      );
    }
  }




