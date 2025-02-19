import 'package:flutter/material.dart';
import 'package:rewago_v01/util/colors.dart';

class SellerCard extends StatelessWidget {
  final String name;
  final String image;
  final VoidCallback? onTap;
  const SellerCard({super.key, required this.name, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    spreadRadius: 2,
                  )
                ],
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.primary,
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(name),
              ],
            ),
          ),
        ),
    );
  }
}
