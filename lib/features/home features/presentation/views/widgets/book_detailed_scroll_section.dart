import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/book_actions.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/custom_book_detailed_app_bar.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsScrollSection extends StatelessWidget {
  const BookDetailsScrollSection({super.key, required this.book});
  final BooksModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailedAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .23),
          child:  CustomBookImage(
            imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo!.title!,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
            
          ),
          textAlign:TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo!.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 3,
          count: 300,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookActions(),
      ],
    );
  }
}
