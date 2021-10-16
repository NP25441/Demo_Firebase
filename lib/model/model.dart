class model {
  String id;
  String productName;
  int price;
  model({
    required this.id,
    required this.productName,
    required this.price,
  });
  factory model.fromMap(Map<String, dynamic>? product) {
    String id = product?['id'];
    String productName = product?['productName'];
    int price = product?['price'];
    return model(id: id, productName: productName, price: price);
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productName': productName,
      'price': price,
    };
  }
}
