import 'package:flutter/material.dart';
import 'package:rewago_v01/manager/evaluate_page.dart';
import 'package:rewago_v01/manager/widgets/seller_card.dart';
import 'package:rewago_v01/util/colors.dart';

class ManagerHome extends StatefulWidget {
  const ManagerHome({super.key});

  @override
  State<ManagerHome> createState() => _ManagerHomeState();
}

class _ManagerHomeState extends State<ManagerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kTextColor,
      body:  Padding(
        padding: const EdgeInsets.only(left: 30, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SellerCard(name: "clubretro thrifts", image: "assets/apparel/apparel3.jpg", onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EvaluatePage()));
            },),
            SizedBox(height: 10),
            SellerCard(name: "undhvandi", image: "assets/apparel/apparel6.jpg", onTap: () {
              Navigator.pop(context);
            },),
          ],
        ),
      ),
      
      );
  }
}