import 'package:booklyapp/features/home%20features/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/featured_book_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        CustomAppBar(),
        FeaturedBookList(),
      ],
    );
  }
}
