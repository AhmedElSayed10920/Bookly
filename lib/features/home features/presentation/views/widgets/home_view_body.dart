import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/books_list_view.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/featured_book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              CustomAppBar(),
              FeaturedBookList(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BooksListView(),
        )
      ],
    );
  }
}
