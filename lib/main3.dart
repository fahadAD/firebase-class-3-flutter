
import 'package:firebaselogin1/main2.dart';
import 'package:firebaselogin1/main4.dart';
import 'package:flutter/foundation.dart';

import 'book_item_model.dart';
import 'book_model.dart';

class Firebase_Services{


 Future<List<Bookjson>?>  get_BookItem( String docId)async{

List<Bookjson> book=[];

await Google_Helper.firebase_firestore.collection("book").get().then((value) {

  for (var element in value.docs) {

  book.add(

      Bookjson(


    name: element["name"],
    image: element["image"],
    id:  element["id"],



  ));

  }

},);
return book;


 }

Future<List<Itemlistmodel>?> get_item_list(String docId,String Collection)async{

 List<Itemlistmodel> book_item_list=[];

 await Google_Helper.firebase_firestore.collection("book").doc(docId).collection(Collection).get().then((value){

   for (var element in value.docs) {

     book_item_list.add(

         Itemlistmodel(


           bookItem: element["bookItem"],
           bookList: element["bookList"],



         ));

   }
 });



 return book_item_list;

}




 // Future post(Map<String,dynamic> data)async{
 //   var docID=DateTime.now().microsecondsSinceEpoch.toString();
 //   await Google_Helper.firebase_firestore.collection("post").doc(docID).set(data);
 // }
 //
 // Future update(Map<String,dynamic> data, String docID)async{
 //
 //    await Google_Helper.firebase_firestore.collection("post").doc(docID).update(data);
 // }
 //
 // Future delete(String docID)async{
 //
 //   await Google_Helper.firebase_firestore.collection("post").doc(docID).delete();
 // }


}
















