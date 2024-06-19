import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

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
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.goBookDetailed);
                    },
                    child: const CustomBookImage()),
              );
            }),
      ),
    );
  }
}
