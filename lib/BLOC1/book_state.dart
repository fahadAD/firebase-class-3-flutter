part of 'book_bloc.dart';

@immutable
abstract class BookState extends Equatable{}

class BookInitial extends BookState {
  @override

  List<Object?> get props =>  [];
}

class book_loding extends BookState {
  @override

  List<Object?> get props =>  [];
}

class book_loded extends BookState {

// final  List<Bookjson> book_data;
//   book_loded({required this.book_data});

  List<Bookjson> book_data=[];
  book_loded(this.book_data);

  @override

  List<Object?> get props =>  [book_data];
}