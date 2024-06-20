import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/search%20feature/presentation/views/widgets/custom_search_field.dart';
import 'package:booklyapp/features/search%20feature/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            CustomSearchField(),
            SizedBox(
              height: 16,
            ),
            Text(
              'Search result',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(child: SearchListView())
          ],
        ),
      ),
    );
  }
}
