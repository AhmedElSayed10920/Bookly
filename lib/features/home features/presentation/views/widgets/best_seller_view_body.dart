import 'package:booklyapp/constants.dart';
import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/best_seller_books_info.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key, required this.bookModel});
  final BooksModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: CustomBookImage(
              imageUrl:
                  bookModel.volumeInfo!.imageLinks!.thumbnail ?? networkImage),
        ),
        const SizedBox(
          width: 30,
        ),
        BestSellerBooksInfo(
          bookModel: bookModel,
        )
      ],
    );
  }
}
