import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/product_model.dart';
import 'package:couldai_user_app/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> _products = [
    Product(name: "خاتم فضة", price: 150.0, imageUrl: "https://via.placeholder.com/150/B0C4DE/000000?Text=Silver+Ring"),
    Product(name: "سلسال فضة", price: 250.0, imageUrl: "https://via.placeholder.com/150/B0C4DE/000000?Text=Silver+Necklace"),
    Product(name: "اسوارة فضة", price: 200.0, imageUrl: "https://via.placeholder.com/150/B0C4DE/000000?Text=Silver+Bracelet"),
    Product(name: "حلق فضة", price: 120.0, imageUrl: "https://via.placeholder.com/150/B0C4DE/000000?Text=Silver+Earrings"),
    Product(name: "خلخال فضة", price: 180.0, imageUrl: "https://via.placeholder.com/150/B0C4DE/000000?Text=Silver+Anklet"),
    Product(name: "بروش فضة", price: 90.0, imageUrl: "https://via.placeholder.com/150/B0C4DE/000000?Text=Silver+Brooch"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("متجر الفضة"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: _products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return ProductCard(product: _products[index]);
        },
      ),
    );
  }
}
