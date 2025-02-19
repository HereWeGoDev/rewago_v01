import 'package:flutter/material.dart';
import 'package:rewago_v01/manager/widgets/details.dart';
import 'package:rewago_v01/manager/widgets/item_card.dart';
import 'package:rewago_v01/models/product.dart';
import 'package:rewago_v01/util/colors.dart';

// We need satefull widget for our categories

class EvaluatePage extends StatefulWidget {
  const EvaluatePage({super.key});

  @override
  State<EvaluatePage> createState() => EvaluatePageState();
}

class EvaluatePageState extends State<EvaluatePage> {
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppColors.kDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: AppColors.kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(product: products[index])
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      );
  }
}