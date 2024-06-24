import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerBooksInfo extends StatelessWidget {
  const BestSellerBooksInfo({
    super.key, required this.bookModel,
  });
  final BooksModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text(
              bookModel.volumeInfo!.title ?? '',
              style: Styles.textStyle20.copyWith(fontFamily: kFontFamily),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            bookModel.volumeInfo!.authors![0],
            style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text(
                'Free',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
               BookRating(
                rating: bookModel.volumeInfo!.averageRating ?? 0,
                count: bookModel.volumeInfo!.ratingsCount ?? 0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
