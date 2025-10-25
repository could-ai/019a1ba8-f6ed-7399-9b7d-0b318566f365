import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/product_model.dart';
import 'package:couldai_user_app/widgets/product_card.dart';
import 'package:couldai_user_app/screens/product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> _products = [
    Product(name: "خاتم فضة ملكي", price: 150.0, imageUrl: "https://via.placeholder.com/200/B0C4DE/000000?Text=Silver+Ring", description: "خاتم فضة عيار 925 بتصميم ملكي فريد، مرصع بأحجار الزركون اللامعة. مثالي للمناسبات الخاصة."),
    Product(name: "سلسال فضة ناعم", price: 250.0, imageUrl: "https://via.placeholder.com/200/B0C4DE/000000?Text=Silver+Necklace", description: "سلسال فضة بتصميم بسيط وأنيق، يضيف لمسة من الرقي لإطلالتك اليومية."),
    Product(name: "اسوارة فضة جذابة", price: 200.0, imageUrl: "https://via.placeholder.com/200/B0C4DE/000000?Text=Silver+Bracelet", description: "اسوارة فضة بتصميم عصري وجذاب، مناسبة لجميع الأوقات."),
    Product(name: "حلق فضة لامع", price: 120.0, imageUrl: "https://via.placeholder.com/200/B0C4DE/000000?Text=Silver+Earrings", description: "حلق فضة بتصميم لامع يخطف الأنظار، يبرز جمالك وأناقتك."),
    Product(name: "خلخال فضة أنيق", price: 180.0, imageUrl: "https://via.placeholder.com/200/B0C4DE/000000?Text=Silver+Anklet", description: "خلخال فضة يزين كاحلك بلمسة من الأنوثة والجاذبية."),
    Product(name: "بروش فضة فاخر", price: 90.0, imageUrl: "https://via.placeholder.com/200/B0C4DE/000000?Text=Silver+Brooch", description: "بروش فضة بتصميم فاخر، يضيف لمسة من التميز لملابسك."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: _products[index]),
                ),
              );
            },
            child: ProductCard(product: _products[index]),
          );
        },
      ),
    );
  }
}
