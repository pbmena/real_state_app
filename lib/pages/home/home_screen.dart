import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        top: true,
        bottom: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: SearchBar()),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 6.5,
                            child: BottomSheetCustom())
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 20.0,
                          padding: EdgeInsets.only(right: 25),
                          child: ChipCustom(),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 25, top: 25, right: 25, bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          "Properties",
                          style: TextStyle(
                            color: colorDark,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Hero(
                tag: "imgProp",
                child: PropertyCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
