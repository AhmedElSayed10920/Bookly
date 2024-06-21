import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home%20features/data/models/books_model/books_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit() : super(FeaturedBookInitial());
}
