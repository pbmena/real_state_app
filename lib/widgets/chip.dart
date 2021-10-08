import 'package:flutter/material.dart';

const textChip = [
  "House",
  "Price",
  "Security",
  "Bedrooms",
  "Garage",
  "Swimming Pool",
];

class ChipCustom extends StatelessWidget {
  const ChipCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 25),
        itemCount: textChip.length,
        itemBuilder: (context, index) {
          return buildChipFilter(textChip[index]);
        });
  }

  Widget buildChipFilter(String filter) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          filter,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
