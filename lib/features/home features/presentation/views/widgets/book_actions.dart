import 'package:booklyapp/core/utils/functions/launch_url.dart';
import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/book_actions_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key, required this.booksModel,
  });
  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: BookActionButton(
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              textColor: Colors.black,
              text: 'Free',
            ),
          ),
          Expanded(
            child: BookActionButton(
              onPressed: () {
                launchCustomUrl(context, booksModel.volumeInfo!.previewLink);
              },
              backgroundColor: const Color(0xffef8262),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              textColor: Colors.white,
              text: 'Free Preview',
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
