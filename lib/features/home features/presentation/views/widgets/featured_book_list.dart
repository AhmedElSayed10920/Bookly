import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/widgets/custom_progress_indicator.dart';
import 'package:booklyapp/core/widgets/error_message.dart';
import 'package:booklyapp/features/home%20features/presentation/view_model/featured_book/featured_book_cubit.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBookList extends StatelessWidget {
  const FeaturedBookList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return Padding(
            padding: const EdgeInsets.only(top: 24),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: GestureDetector(
                          onTap: () {
                            GoRouter.of(context).push(AppRouter.goBookDetailed,
                            extra: state.books[index]
                                );
                          },
                          child: CustomBookImage(
                            imageUrl: state.books[index].volumeInfo!.imageLinks!
                                    .thumbnail ??
                                networkImage,
                          )),
                    );
                  }),
            ),
          );
        } else if (state is FeaturedBookFailuer) {
          return ErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
