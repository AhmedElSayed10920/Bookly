import 'package:booklyapp/features/home%20features/presentation/views/widgets/best_seller_books_info.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/best_seller_item_image.dart';
import 'package:flutter/material.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BestSellerItemImage(),
        SizedBox(
          width: 30,
        ),
        BestSellerBooksInfo()
      ],
    );
  }
}
