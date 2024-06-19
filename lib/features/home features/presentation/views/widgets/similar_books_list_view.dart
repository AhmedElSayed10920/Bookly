import 'package:booklyapp/features/home%20features/presentation/views/widgets/similar_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15 ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5),
          child:  SimilarBookImage(),
        ),
      ),
    );
  }
}
