import '../repositories/ProductRepository.dart';
import '../models/Product.dart';

Future<void> exercise1() async {
  print("");
  print("EXERCISE 1");
  final repo = ProductRepository();

  var products = await repo.getAll();
  print("All products:");
  products.forEach(print);

  repo.liveAdded().listen((product) {
    print("New product: $product");
  });

  repo.addProduct(Product(3, "Tablet", 600));
}