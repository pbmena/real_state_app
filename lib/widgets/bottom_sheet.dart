import 'package:flutter/material.dart';
import 'package:real_state_app/pages/filter_screen.dart';

import '../utils/utils.dart';

class BottomSheetCustom extends StatefulWidget {
  BottomSheetCustom({Key? key}) : super(key: key);

  @override
  _BottomSheetCustomState createState() => _BottomSheetCustomState();
}

class _BottomSheetCustomState extends State<BottomSheetCustom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showBottomSheet();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1,
            color: colorLight,
            style: BorderStyle.solid,
          ),
        ),
        child: Icon(
          Icons.tune_rounded,
          size: 30,
          color: colorDark,
        ),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return Wrap(
          children: [
            FilterScreen(),
          ],
        );
      },
    );
  }
}
