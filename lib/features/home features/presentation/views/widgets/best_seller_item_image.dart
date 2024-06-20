import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerItemImage extends StatelessWidget {
  const BestSellerItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.amber,
                image: const DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill))),
      ),
    );
  }
}
