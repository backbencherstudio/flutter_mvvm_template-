class HomeProduct {
  final int id;
  final String name;
  final double price;
  final String image;

  HomeProduct({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  factory HomeProduct.fromJson(Map<String, dynamic> json) => HomeProduct(
    id: json['id'] ?? 0,
    name: json['name'] ?? '',
    price: (json['price'] ?? 0).toDouble(),
    image: json['image'] ?? '',
  );
}

List<HomeProduct> dummyProducts = List.generate(
  5,
      (i) => HomeProduct(
    id: i,
    name: "Product $i",
    price: 99.99 + i,
    image: "https://picsum.photos/id/${i + 30}/200/200",
  ),
);
