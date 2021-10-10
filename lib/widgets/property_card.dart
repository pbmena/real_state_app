import 'package:flutter/material.dart';
import 'package:real_state_app/pages/property_details.dart';

import '../models/models.dart';
import '../utils/utils.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: getPropertyData.length,
            itemBuilder: (BuildContext context, index) {
              final cardImageProperty = getPropertyData[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PropertyDetailsScreen(property: cardImageProperty),
                    ),
                  );
                },
                child: SrollPropertyCard(cardImageProperty: cardImageProperty),
              );
            },
          ),
        ),
      ),
    );
  }
}

class SrollPropertyCard extends StatelessWidget {
  const SrollPropertyCard({
    Key? key,
    required this.cardImageProperty,
  }) : super(key: key);

  final PropertyData cardImageProperty;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 24),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(cardImageProperty.imageProperty),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.8),
              ],
            ),
          ),
          child: buildInfoCard(),
        ),
      ),
    );
  }

  Widget buildInfoCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          width: 80,
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Center(
            child: Text(
              "FOR " + cardImageProperty.available,
              style: TextStyle(
                color: backgroundColor,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Expanded(child: Container()),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardImageProperty.address,
                  style: TextStyle(
                    color: backgroundColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  r"$" + cardImageProperty.price,
                  style: TextStyle(
                    color: backgroundColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: backgroundColor,
                      size: 14,
                    ),
                    SizedBox(width: 4),
                    Text(
                      cardImageProperty.city,
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.zoom_out_map,
                      color: backgroundColor,
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text(
                      cardImageProperty.sqm + " sq/m",
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: secondaryColor,
                      size: 14,
                    ),
                    SizedBox(width: 4),
                    Text(
                      cardImageProperty.review + " Reviews",
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              height: 15,
              color: backgroundColor,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "6 Months Lease",
                  style: TextStyle(
                    color: backgroundColor,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.bedroom_child_rounded,
                          color: backgroundColor,
                          size: 14,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "3",
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.hot_tub_rounded,
                          color: backgroundColor,
                          size: 14,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "2",
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.car_repair_rounded,
                          color: backgroundColor,
                          size: 14,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "1",
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
