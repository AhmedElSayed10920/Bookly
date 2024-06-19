import 'package:booklyapp/features/home%20features/presentation/views/widgets/featured_book_list_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookList extends StatelessWidget {
  const FeaturedBookList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: FeaturedBookListItem(),
              );
            }),
      ),
    );
  }
}
