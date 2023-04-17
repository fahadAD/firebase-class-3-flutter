import 'package:firebaselogin1/BOOKITEMBLOC/item_list_bloc.dart';
import 'package:firebaselogin1/book_item_model.dart';
import 'package:firebaselogin1/details.dart';
import 'package:firebaselogin1/main2.dart';
import 'package:firebaselogin1/main3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Book_detail extends StatefulWidget {
  final String name;
  final String image;
  final String id;

  const Book_detail({Key? key, required this.name, required this.image, required this.id}) : super(key: key);

  @override
  State<Book_detail> createState() => _Book_detailState();
}

class _Book_detailState extends State<Book_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),

      body: BookItemBody(data: widget.id,collection: widget.name),

    );
  }

Widget  BookItemBody({required String data,required String collection}) {
    return BlocProvider(create: (context) => ItemListBloc(data, collection)..add(All_book_item()),
      child: BlocBuilder<ItemListBloc,ItemListState>(builder: (context, state) {
        if(state is book_itemLoding){
          return CircularProgressIndicator();
        }
        else if(state is book_itemLoded){
     return ListView.builder(
       primary: false,
       shrinkWrap: true,
       itemCount: state.book_item_list.length,
       itemBuilder: (BuildContext context, int index) {
         var data=state.book_item_list[index];
         return ListTile(
           onTap: () {
             pageRoute(context, BOOKITEMDETAILS(bookITEM: data.bookList!, ));
           },
           title: Text(data.bookItem!),

         );
     },

     );
        }
else{
  return Text(" no data");

        }


      },),);
}

}

//
// FutureBuilder<List<Itemlistmodel>?>(
//
// future: Firebase_Services().get_item_list(widget.id,widget.name),
//
// builder:   (context, snapshot) {
//
// if(snapshot.connectionState==ConnectionState.waiting){
// return CircularProgressIndicator();
// }
// else if(snapshot.hasData){
// return Center(
// child: Text("no data"),
// );
// }else{
// return ListView.builder(
// primary: false,
// shrinkWrap: true,
// itemCount: snapshot.data!.length,
// itemBuilder: (BuildContext context, int index) {
// var data=snapshot.data![index];
// return ListTile(
//
// title: Text(data.bookItem!),
// subtitle: Text(data.bookList.toString()),
// );
// },
//
// );
// }
//
//
// },),