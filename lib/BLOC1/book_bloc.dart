import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebaselogin1/main3.dart';
import 'package:meta/meta.dart';

import '../book_model.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {

  List<Bookjson> book_list=[];
  Firebase_Services _firebase_services=Firebase_Services();

  BookBloc() : super(BookInitial()) {
    on<BookEvent>((event, emit) async{

     emit(book_loding());
book_list=(await _firebase_services.get_Book())!;
     emit(book_loded(book_list));

    });
  }
}



