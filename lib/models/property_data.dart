class PropertyData {
  final String available;
  final String address;
  final String price;
  final String city;
  final String sqm;
  final String review;
  final String description;
  final String rentImages;
  final String saleImage;
  final List<String> imageProperty;

  PropertyData(
    this.available,
    this.address,
    this.price,
    this.city,
    this.sqm,
    this.review,
    this.description,
    this.rentImages,
    this.saleImage,
    this.imageProperty,
  );
}

List<PropertyData> getPropertyList() {
  return <PropertyData>[
    PropertyData(
      "SALE",
      "Clinton Villa",
      "3,500.00",
      "Los Angeles",
      "2,456",
      "4,4",
      "The living is easy in this impressive, generously proportioned contemporary residende with lakke and and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/prop_one.jpg",
      "assets/images/prop_two.jpg",
      [
        "assets/images/prop_three.jpg",
        "assets/images/prop_four.jpg",
        "assets/images/prop_five.jpg",
        "assets/images/prop_one.jpg",
        "assets/images/prop_two.jpg",
      ],
    ),
    PropertyData(
      "RENT",
      "Salu House",
      "4,500.00",
      "Miami",
      "3,300",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/prop_two.jpg",
      "assets/images/prop_three.jpg",
      [
        "assets/images/prop_three.jpg",
        "assets/images/prop_four.jpg",
        "assets/images/prop_five.jpg",
        "assets/images/prop_one.jpg",
        "assets/images/prop_two.jpg",
      ],
    ),
    PropertyData(
      "RENT",
      "Salu House",
      "3,500.00",
      "Miami",
      "3,300",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/prop_three.jpg",
      "assets/images/prop_four.jpg",
      [
        "assets/images/prop_three.jpg",
        "assets/images/prop_four.jpg",
        "assets/images/prop_five.jpg",
        "assets/images/prop_one.jpg",
        "assets/images/prop_two.jpg",
      ],
    ),
    PropertyData(
      "RENT",
      "Salu House",
      "3,500.00",
      "Miami",
      "3,300",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/prop_four.jpg",
      "assets/images/prop_five.jpg",
      [
        "assets/images/prop_three.jpg",
        "assets/images/prop_four.jpg",
        "assets/images/prop_five.jpg",
        "assets/images/prop_one.jpg",
        "assets/images/prop_two.jpg",
      ],
    ),
    PropertyData(
      "RENT",
      "Salu House",
      "3,500.00",
      "Miami",
      "3,300",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/prop_three.jpg",
      "assets/images/prop_four.jpg",
      [
        "assets/images/prop_three.jpg",
        "assets/images/prop_four.jpg",
        "assets/images/prop_five.jpg",
        "assets/images/prop_one.jpg",
        "assets/images/prop_two.jpg",
      ],
    ),
    PropertyData(
      "SALE",
      "Clinton Villa",
      "3,500.00",
      "Los Angeles",
      "2,456",
      "4,4",
      "The living is easy in this impressive, generously proportioned contemporary residende with lakke and and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/prop_one.jpg",
      "assets/images/prop_two.jpg",
      [
        "assets/images/prop_three.jpg",
        "assets/images/prop_four.jpg",
        "assets/images/prop_five.jpg",
        "assets/images/prop_one.jpg",
        "assets/images/prop_two.jpg",
      ],
    ),
    PropertyData(
      "RENT",
      "Salu House",
      "3,500.00",
      "Miami",
      "3,300",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/prop_four.jpg",
      "assets/images/prop_five.jpg",
      [
        "assets/images/prop_three.jpg",
        "assets/images/prop_four.jpg",
        "assets/images/prop_five.jpg",
        "assets/images/prop_one.jpg",
        "assets/images/prop_two.jpg",
      ],
    ),
    PropertyData(
      "RENT",
      "Salu House",
      "4,500.00",
      "Miami",
      "3,300",
      "4.6",
      "The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf.",
      "assets/images/prop_two.jpg",
      "assets/images/prop_three.jpg",
      [
        "assets/images/prop_three.jpg",
        "assets/images/prop_four.jpg",
        "assets/images/prop_five.jpg",
        "assets/images/prop_one.jpg",
        "assets/images/prop_two.jpg",
      ],
    ),
  ];
}
