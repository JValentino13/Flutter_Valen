class Product {
  final String name;
  final String price;
  final String image;
  final String description;

  Product(
    this.name,
    this.price,
    this.image,
    this.description
  );
}

final List<Product> fishData = [
  Product(
  'Koi Fish', 
  'Rp. 250.000,00', 
  'assets/fish/koi.jpg', 
  'An Beutifull Fish'
  ),

  Product(
  'Yellow Fish', 
  'Rpl. 200.000,00', 
  'assets/fish/yellow.jpg', 
  'An Beutifull Fish'
  ),

  Product(
  'Yummy Sushi', 
  'Rpl. 599.000,00', 
  'assets/fish/sushi.jpg', 
  'An Beutifull Fish'
  ),
];