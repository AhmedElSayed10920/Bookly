import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerBooksInfo extends StatelessWidget {
  const BestSellerBooksInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text(
              'Harry Potter and the Goblet of Fire',
              style: Styles.textStyle20.copyWith(fontFamily: kFontFamily),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            'J.K. Rowling',
            style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text(
                r'19.19 $',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const BookRating(),
            ],
          ),
        ],
      ),
    );
  }
}
