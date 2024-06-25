import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:flutter/material.dart';

class SimilarBookImage extends StatelessWidget {
  const SimilarBookImage({super.key, required this.book});
  final BooksModel book;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.amber,
              image: DecorationImage(
                  image:
                      NetworkImage('${book.volumeInfo!.imageLinks!.thumbnail}'),
                  fit: BoxFit.fill))),
    );
  }
}
