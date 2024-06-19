import 'package:booklyapp/features/home%20features/presentation/views/widgets/custom_book_detailed_app_bar.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailedViewBody extends StatelessWidget {
  const BookDetailedViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          const CustomBookDetailedAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .25),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
