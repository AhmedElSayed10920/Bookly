import 'package:booklyapp/core/utils/styles.dart';
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
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              )),
        ],
      ),
    );
  }
}