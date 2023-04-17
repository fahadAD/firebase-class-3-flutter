part of 'item_list_bloc.dart';

@immutable
abstract class ItemListState extends Equatable{}

class ItemListInitial extends ItemListState {

  @override
  List<Object?> get props =>  [];
}

class book_itemLoding extends ItemListState {

  @override
  List<Object?> get props =>  [];
}
class book_itemLoded extends ItemListState {

final List<Itemlistmodel> book_item_list;
  book_itemLoded({required this.book_item_list});

  @override
   List<Object?> get props =>  [book_item_list];
}