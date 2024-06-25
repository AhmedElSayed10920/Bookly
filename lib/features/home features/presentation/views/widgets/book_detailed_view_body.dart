import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/book_detailed_scroll_section.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/similar_books_list_view_section.dart';
import 'package:flutter/material.dart';

class BookDetailedViewBody extends StatelessWidget {
  const BookDetailedViewBody({
    super.key,
    required this.book,
  });
  final BooksModel book;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  BookDetailsScrollSection(
                    book: book,
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  const SimilarBooksListViewSection(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
