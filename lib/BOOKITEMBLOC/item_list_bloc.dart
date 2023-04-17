import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebaselogin1/main3.dart';
import 'package:meta/meta.dart';

import '../book_item_model.dart';

part 'item_list_event.dart';
part 'item_list_state.dart';

class ItemListBloc extends Bloc<ItemListEvent, ItemListState> {
  final String docID;
  final String collection;

  List<Itemlistmodel> book_item_list=[];
  Firebase_Services _firebase_services=Firebase_Services();

  ItemListBloc(this.docID, this.collection) : super(ItemListInitial()) {

    on<ItemListEvent>((event, emit) async{

     emit(book_itemLoding());

book_item_list=(await _firebase_services.get_item_list(docID, collection))!;

     emit(book_itemLoded(book_item_list: book_item_list));

    });
  }
}
