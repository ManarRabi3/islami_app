import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/bottom_sheets/x.dart';
import 'package:provider/provider.dart';

import '../../my_theme_data.dart';
import '../../providers/my_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);

    return Container(
      height: MediaQuery.of(context).size.height*0.6,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
            onTap: () {
                pro.ChangeTheme(ThemeMode.light);

                Navigator.pop(context);

            },

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("light".tr(),
                      style: Theme.of(context).textTheme.bodyMedium
                          ?.copyWith(
                      color: primaryColor
                  )),
                  Icon(Icons.done,size:30,color: primaryColor,),
                ],
              ),
            ),
            SizedBox(height: 24,),
            InkWell(
              onTap: (){

    pro.ChangeTheme(ThemeMode.dark);

    Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text("dark".tr()),
                  //  Icon(Icons.done),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
