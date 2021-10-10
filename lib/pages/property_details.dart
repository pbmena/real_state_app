import 'package:flutter/material.dart';

import '../models/property_data.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';

class PropertyDetailsScreen extends StatelessWidget {
  PropertyDetailsScreen({Key? key, required this.property}) : super(key: key);

  final PropertyData property;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CustomAppBarDelegate(
                property: property, expandedHeight: size.height / 2.6),
            pinned: false,
          ),
          buildPropertyDetails()
        ],
      ),
    );
  }

  Widget buildPropertyDetails() => SliverToBoxAdapter(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(property.imageProperty),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mr. Property",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Owner",
                              style: TextStyle(
                                fontSize: 16,
                                color: colorLight,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              PropertyFeatures(),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(PROPERTY_DESCRIPTION)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25, bottom: 16),
                child: Text(
                  "Photos",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 150,
                width: double.maxFinite,
                child: PhotoCard(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: secondaryColor.withOpacity(0.8),
                        shape: BoxShape.rectangle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.phone,
                          color: backgroundColor,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: secondaryColor.withOpacity(0.8),
                        shape: BoxShape.rectangle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.message,
                          color: backgroundColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 500),
            ],
          ),
        ),
      );
}

class CustomAppBarDelegate extends SliverPersistentHeaderDelegate {
  const CustomAppBarDelegate({
    required this.property,
    required this.expandedHeight,
  });
  final PropertyData property;
  final double expandedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final size = MediaQuery.of(context).size;

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.hardEdge,
      children: [
        Positioned(
          child: backgroundHeader(shrinkOffset, size),
        ),
        Positioned(
          top: 10,
          child: headerSpace(shrinkOffset, size, context),
        ),
      ],
    );
  }

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget headerSpace(double shrinkOffset, size, context) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Container(
          height: size.height * 0.35,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: backgroundColor,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height / 8.5),
                Container(
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  width: size.width / 5.0,
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Center(
                    child: Text(
                      "FOR " + property.available,
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      property.address,
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: size.width / 3.5),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: secondaryColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: backgroundColor,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      property.city,
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.zoom_out_map,
                          color: backgroundColor,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          property.sqm + " sq/m",
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: size.width / 3.3),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: secondaryColor,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          property.review + " Reviews",
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget backgroundHeader(double shrinkOffset, size) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Stack(
          children: [
            Hero(
              tag: "imgProp",
              child: Container(
                height: size.height * 0.38,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(property.imageProperty),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
