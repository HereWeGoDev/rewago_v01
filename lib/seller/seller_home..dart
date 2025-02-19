import 'package:flutter/material.dart';
import 'package:rewago_v01/seller/add_apparel.dart';

class SellerHome extends StatefulWidget {
  const SellerHome({super.key});

  @override
  State<SellerHome> createState() => _SellerHomeState();
}

class _SellerHomeState extends State<SellerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddApparel()));
          },
          child: const Text('Go to add item page'),
        ),
      ),
    );
  }
}

// todo items
// 