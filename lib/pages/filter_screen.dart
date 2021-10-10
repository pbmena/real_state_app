import 'package:flutter/material.dart';

import '../utils/utils.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _values = RangeValues(300, 800);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, top: 30, right: 25, bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: 'Filter',
              style: TextStyle(
                color: colorDark,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: -.4,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: ' your search',
                    style: TextStyle(
                      color: colorDark,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -.4,
                    ))
              ],
            ),
          ),
          SizedBox(height: 30),
          RichText(
            text: TextSpan(
              text: 'Price',
              style: TextStyle(
                color: colorDark,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                letterSpacing: -.4,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: ' Range',
                    style: TextStyle(
                      color: colorDark,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -.4,
                    ))
              ],
            ),
          ),
          RangeSlider(
            values: _values,
            divisions: 10,
            onChanged: (RangeValues values) {
              setState(() {
                if (values.end - values.start >= 10) {
                  _values = values;
                } else {
                  if (_values.start == values.start) {
                    _values = RangeValues(_values.start, _values.start + 10);
                  } else {
                    _values = RangeValues(_values.end - 10, _values.end);
                  }
                }
              });
            },
            min: 70,
            max: 1000,
            activeColor: primaryColor,
            inactiveColor: colorLight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                r"$70k",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                r"$1000k",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          RichText(
            text: TextSpan(
              text: 'Rooms',
              style: TextStyle(
                color: colorDark,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                letterSpacing: -.4,
              ),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              selectedFilter("Any", false),
              selectedFilter("1", true),
              selectedFilter("2", false),
              selectedFilter("3+", false),
            ],
          ),
          SizedBox(height: 25),
          RichText(
            text: TextSpan(
              text: 'Bathrooms',
              style: TextStyle(
                color: colorDark,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                letterSpacing: -.4,
              ),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              selectedFilter("Any", true),
              selectedFilter("1", false),
              selectedFilter("2", false),
              selectedFilter("3+", false),
            ],
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }

  Widget selectedFilter(String text, bool selected) {
    return Container(
      height: 50,
      width: 70,
      decoration: BoxDecoration(
        color: selected ? primaryColor : Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          width: selected ? 0 : 2,
          color: colorLight,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: selected ? backgroundColor : colorDark,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
