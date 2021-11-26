class Product {
  String imageUrl;
  String name;
  double price;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
  });
}

final List<Product> phones = [
  Product(
    imageUrl: 'lib/assets/phone1.png',
    name: 'Apple iPhone 12 Pro Max',
    price: 1064,
  ),
  Product(
    imageUrl: 'lib/assets/phone2.png',
    name: 'SAMSUNG Galaxy Z Flip 3',
    price: 849.99,
  ),
  Product(
    imageUrl: 'lib/assets/phone3.png',
    name: 'Original Oppo Find X2 Pro',
    price: 699.99,
  ),
  Product(
    imageUrl: 'lib/assets/phone4.png',
    name: 'Xiaomi Redmi Note 10 Pro',
    price: 339.99,
  ),
];

final List<Product> headphones = [
  Product(
    imageUrl: 'lib/assets/headphone1.png',
    name: 'Skullcandy Hesh 2',
    price: 57.54,
  ),
  Product(
    imageUrl: 'lib/assets/headphone2.png',
    name: 'Sony Headphones',
    price: 78,
  ),
];

final List<Product> speakers = [
  Product(
    imageUrl: 'lib/assets/speaker1.png',
    name: 'JBL CLIP 3',
    price: 44,
  ),
  Product(
    imageUrl: 'lib/assets/speaker2.png',
    name: 'Bose SoundLink',
    price: 129.99,
  ),
  Product(
    imageUrl: 'lib/assets/speaker3.png',
    name: 'JBL Charge 3',
    price: 129.95,
  ),
];

final List<Product> lights = [
  Product(
    imageUrl: 'lib/assets/light1.png',
    name: 'Ring Tripod Light',
    price: 24.99,
  ),
];

final List<Product> cart = [
  phones[3],
  headphones[1],
  speakers[1],
  headphones[0],
  lights[0],
];
