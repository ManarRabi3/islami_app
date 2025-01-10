import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';

class LanguageBottomssheet extends StatelessWidget {
  const LanguageBottomssheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height*0.6,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Arabic",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: primaryColor
                )),
                Icon(Icons.done,size:30,color: primaryColor,),
              ],
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text("English"),
              //  Icon(Icons.done),
              ],
            )
          ],
        ),
      ),
    );
  }
}
