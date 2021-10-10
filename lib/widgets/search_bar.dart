import 'package:flutter/material.dart';

import '../utils/utils.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 20,
        color: colorDark,
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        errorMaxLines: 1,
        hintText: 'Search',
        hintStyle: TextStyle(
          fontSize: 16,
          color: colorLight,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: colorLight,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Icon(
            Icons.search,
            color: colorDark,
            size: 25,
          ),
        ),
      ),
    );
  }
}
