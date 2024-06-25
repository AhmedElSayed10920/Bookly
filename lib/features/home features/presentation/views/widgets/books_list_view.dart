import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/widgets/custom_progress_indicator.dart';
import 'package:booklyapp/core/widgets/error_message.dart';
import 'package:booklyapp/features/home%20features/presentation/view_model/newest_book/newest_books_cubit.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/best_seller_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView.builder(
              padding: EdgeInsets.zero,
               physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.goBookDetailed,extra: state.books[index]);
                    },
                    child: BestSellerListItem(
                      bookModel: state.books[index],
                    )),
              ),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return ErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
