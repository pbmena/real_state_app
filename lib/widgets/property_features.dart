import 'package:flutter/material.dart';

import '../models/models.dart';
import '../utils/utils.dart';

class PropertyFeatures extends StatelessWidget {
  const PropertyFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25),
          itemCount: textFeatures.length,
          itemBuilder: (context, index) {
            return buildFeatureList(
              iconFeatures.elementAt(index),
              textFeatures[index],
            );
          }),
    );
  }

  Widget buildFeatureList(IconData iconData, String text) {
    return Container(
      width: 100,
      padding: EdgeInsets.only(top: 8),
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: colorLight,
          width: 1,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 4),
            Icon(
              iconData,
              color: secondaryColor,
              size: 28,
            ),
            SizedBox(height: 4),
            Text(
              text,
              style: TextStyle(
                color: colorDark,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
