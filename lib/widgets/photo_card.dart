import 'package:flutter/material.dart';

import '../models/models.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 150,
          width: 200,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 25),
              itemCount: getPropertyData.length,
              itemBuilder: (context, index) {
                final cardPhoto = getPropertyData[index];
                return SrollPhotoCard(cardPhoto: cardPhoto);
              }),
        ),
      ),
    );
  }
}

class SrollPhotoCard extends StatelessWidget {
  const SrollPhotoCard({Key? key, required this.cardPhoto}) : super(key: key);

  final PropertyData cardPhoto;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 24, right: 25),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(cardPhoto.imageProperty),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
