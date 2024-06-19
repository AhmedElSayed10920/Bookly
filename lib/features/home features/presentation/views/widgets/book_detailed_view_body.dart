import 'package:booklyapp/features/home%20features/presentation/views/widgets/book_detailed_scroll_section.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/similar_books_list_view_section.dart';
import 'package:flutter/material.dart';

class BookDetailedViewBody extends StatelessWidget {
  const BookDetailedViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  BookDetailsScrollSection(),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SimilarBooksListViewSection(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
