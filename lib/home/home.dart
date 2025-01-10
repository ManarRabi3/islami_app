import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/tabs/ahadeth.dart';
import 'package:islami_app/home/tabs/quran.dart';
import 'package:islami_app/home/tabs/radio.dart';
import 'package:islami_app/home/tabs/sebha.dart';
import 'package:islami_app/home/tabs/settings.dart';
import 'package:islami_app/my_theme_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_bg.png",
        width: double.infinity,fit: BoxFit.fill,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.bodyLarge
              ),

            ),

          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              //backgroundColor: MyThemeData.primaryColor,

              items: [
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage("assets/images/moshaf_blue.png")),
                    label: "",
                   ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio.png")),
                    label: "",
                   ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                    label: "",
                  ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                    label: "",
                   ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "",
                   ),
              ]),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingsTab(),
  ];
}
