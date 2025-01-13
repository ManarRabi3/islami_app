import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:provider/provider.dart';
import '../../providers/my_provider.dart';

//class AppColors {
 // static const Color primary = Color(0xFFB7935F);
 // static const Color colorBlack = Color(0xFF242424);
//}

class LanguageBottomssheet extends StatelessWidget {
  const LanguageBottomssheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    Locale currentLocale = context.locale;
    return Container(
      //height: MediaQuery.of(context).size.height*0.6,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                // provider.changeLanguage(context,"en");
                context.setLocale(Locale("en"));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "english".tr(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: currentLocale == Locale('en')?
                        primaryColor:
                        blackColor) ,
                  ),
                  currentLocale == Locale('en')?Icon(
                    Icons.done,
                    size: 30,
                   // color: primaryColor,
                  ):SizedBox()
                  //  Icon(Icons.done),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                // provider.changeLanguage(context,"ar");
                context.setLocale(Locale("ar"));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("arabic".tr(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color:
                      currentLocale != Locale('en')?
                      primaryColor:
                      blackColor)),
                  currentLocale != Locale('en')?Icon(
                    Icons.done,
                    size: 30,
                    // color: primaryColor,
                  ):SizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}


