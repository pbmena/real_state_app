class PropertyData {
  final String available;
  final String address;
  final String price;
  final String city;
  final String sqm;
  final String review;
  final String imageProperty;

  PropertyData({
    required this.available,
    required this.address,
    required this.price,
    required this.city,
    required this.sqm,
    required this.review,
    required this.imageProperty,
  });
}

final getPropertyData = [
  PropertyData(
    available: "SALE",
    address: "Clinton Villa",
    price: "3,500.00",
    city: "Los Angeles",
    sqm: "2,456",
    review: "4,4",
    imageProperty: "assets/images/prop_one.jpg",
  ),
  PropertyData(
    available: "RENT",
    address: "Hilton House",
    price: "4,500.00",
    city: "California",
    sqm: "3,300",
    review: "4.6",
    imageProperty: "assets/images/prop_two.jpg",
  ),
  PropertyData(
    available: "RENT",
    address: "Ibe House",
    price: "3,500.00",
    city: "Florida",
    sqm: "3,300",
    review: "4.6",
    imageProperty: "assets/images/prop_three.jpg",
  ),
  PropertyData(
    available: "RENT",
    address: "Clinton Villa",
    price: "3,500.00",
    city: "Los Angeles",
    sqm: "3,300",
    review: "4.6",
    imageProperty: "assets/images/prop_four.jpg",
  ),
  PropertyData(
    available: "RENT",
    address: "Hilton House",
    price: "1,700.00",
    city: "California",
    sqm: "3,300",
    review: "4.6",
    imageProperty: "assets/images/prop_five.jpg",
  ),
  PropertyData(
    available: "SALE",
    address: "Ibe House",
    price: "3,500.00",
    city: "Florida",
    sqm: "2,456",
    review: "4,4",
    imageProperty: "assets/images/prop_one.jpg",
  ),
  PropertyData(
    available: "RENT",
    address: "Clinton Villa",
    price: "3,230.00",
    city: "Los Angeles",
    sqm: "3,300",
    review: "4.6",
    imageProperty: "assets/images/prop_four.jpg",
  ),
  PropertyData(
    available: "RENT",
    address: "Hilton House",
    price: "5,000.00",
    city: "California",
    sqm: "3,300",
    review: "4.6",
    imageProperty: "assets/images/prop_two.jpg",
  ),
];
