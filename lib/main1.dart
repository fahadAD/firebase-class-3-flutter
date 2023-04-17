 import 'package:firebaselogin1/BLOC1/book_bloc.dart';
import 'package:firebaselogin1/book_detail.dart';
import 'package:firebaselogin1/main2.dart';
import 'package:firebaselogin1/main3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final titlE_controller=TextEditingController();
  final descriptioN_controller=TextEditingController();


  @override
  void initState() {
   context.read<BookBloc>().add(All_da_ta());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<BookBloc,BookState>(builder:
          (context, state) {
        if(state is book_loding){
          return CircularProgressIndicator();
        }if(state is book_loded){
          return ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: state.book_data.length,
            itemBuilder: (BuildContext context, int index) {
            var data=state.book_data[index];

            return
         InkWell(
           onTap: () {
  pageRoute(context, Book_detail(name: data.name!, image: data.image!, id: data.id!,));
           },
           child: Column(
             children: [
               Image.network(data.image!,fit: BoxFit.cover,height: 100,width: 100,),
               Text(data.name!),
               Text(data.id!),
             ],
           ),
         );
          },

          );
        // }if(state  is user_ERROR){
        //   return Text("fix this error");
        }

        else{
          return Text("not show");
        }

      },),
    );
  }

 //    myShow_Dialog(String data,tittle,description) {
 //
 //
 // setState(() {
 //
 //   titlE_controller.text=tittle;
 //   descriptioN_controller.text=description;
 //
 // });
 //
 //
 // return
 //    showDialog(context: context, builder: (context) =>
 //
 //        AlertDialog(
 //
 //        title: Text("Edit"),
 //
 //        content: Column(
 //        children: [
 //
 //          Padding(
 //            padding: const EdgeInsets.all(8.0),
 //            child: TextFormField(
 //              controller: titlE_controller,
 //            ),
 //          ),
 //
 //          Padding(
 //            padding: const EdgeInsets.all(8.0),
 //            child: TextFormField(
 //              controller: descriptioN_controller,
 //            ),
 //          ),
 //
 //          ElevatedButton(onPressed: () {
 //            Firebase_Services().update({
 //
 //              "tittle":titlE_controller.text,
 //              "description":descriptioN_controller.text,
 //
 //            }, data).then((value) {
 //
 //                titlE_controller.clear();
 //                descriptioN_controller.clear();
 //
 //              context.read<UserBloc>().add(All_data());
 //              Navigator.pop(context);
 //            }, );
 //          }, child: Text("Edit")),
 //        ],
 //      ),
 //    ),);
 //
 //  }


}
