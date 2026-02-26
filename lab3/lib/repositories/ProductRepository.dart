import 'dart:async';
import '../models/Product.dart';

class ProductRepository {
  final List<Product> _products = [
    Product(1, "Laptop", 1500),
    Product(2, "Phone", 800),
  ];

  final StreamController<Product> _controller =
  StreamController<Product>.broadcast();

  Future<List<Product>> getAll() async {
    await Future.delayed(Duration(seconds: 1));
    return _products;
  }

  Stream<Product> liveAdded() => _controller.stream;

  void addProduct(Product product) {
    _products.add(product);
    _controller.add(product);
  }
}