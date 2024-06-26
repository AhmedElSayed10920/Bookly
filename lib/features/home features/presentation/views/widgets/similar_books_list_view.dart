import 'package:booklyapp/core/widgets/custom_progress_indicator.dart';
import 'package:booklyapp/core/widgets/error_message.dart';
import 'package:booklyapp/features/home%20features/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/similar_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>  Padding(
                padding:const EdgeInsets.symmetric(horizontal: 5),
                child: SimilarBookImage(book:state.books[index]),
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
