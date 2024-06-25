import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:booklyapp/features/home%20features/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/book_detailed_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailedView extends StatefulWidget {
  const BookDetailedView({super.key, required this.bookModel});
  final BooksModel bookModel;

  @override
  State<BookDetailedView> createState() => _BookDetailedViewState();
}

class _BookDetailedViewState extends State<BookDetailedView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      category: widget.bookModel.volumeInfo!.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailedViewBody(
        book: widget.bookModel,
      ),
    );
  }
}
