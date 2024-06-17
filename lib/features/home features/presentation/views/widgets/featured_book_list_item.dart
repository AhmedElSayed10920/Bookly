import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedBookListItem extends StatelessWidget {
  const FeaturedBookListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.amber,
              image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill))),
    );
  }
}
