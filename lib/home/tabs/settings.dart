import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/bottom_sheets/theme_bottomssheet.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

import '../bottom_sheets/language_bottomssheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("theme".tr()),
        SizedBox(
      height: 12,
        ),
        InkWell(
         onTap: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              isDismissible: true,
              backgroundColor: Colors.white,
              builder:(context){
            return ThemeBottomSheet();
          } ,
          );
         },
          child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: primaryColor)),
                child: Text(
                    pro.mode  ==ThemeMode.dark?"dark".tr():
                        "light".tr()),
          ),
        ),
        SizedBox(
          height: 44,
        ),
        Text("language".tr()),
        SizedBox(
          height: 12,
        ),
        InkWell(
          onTap: (){
            showModalBottomSheet(
              isDismissible: true,
              backgroundColor: Colors.white,
                context: context,
                builder: (context){
                  return LanguageBottomssheet();
                }
            );
          },
          child: Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: primaryColor)),
            child: Text("arabic".tr()),
          ),
        )
      ],
      ),
    );
  }
}
