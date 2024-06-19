import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksListViewSection extends StatelessWidget {
  const SimilarBooksListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const SimilarBooksListView(),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}