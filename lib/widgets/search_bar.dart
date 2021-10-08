import 'package:flutter/material.dart';

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
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        errorMaxLines: 1,
        hintText: 'Search',
        hintStyle: TextStyle(
          fontSize: 20,
          color: Colors.grey[400],
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
              style: BorderStyle.solid,
            )),
        suffixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Icon(
            Icons.search,
            color: Colors.grey,
            size: 25,
          ),
        ),
      ),
    );
  }
}
