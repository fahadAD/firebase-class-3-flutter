import 'package:flutter/material.dart';

class BOOKITEMDETAILS extends StatefulWidget {
  final Map bookITEM;
  const BOOKITEMDETAILS({Key? key, required this.bookITEM}) : super(key: key);

  @override
  State<BOOKITEMDETAILS> createState() => _BOOKITEMDETAILSState();
}

class _BOOKITEMDETAILSState extends State<BOOKITEMDETAILS> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
 appBar: AppBar(),

      body:ListView.builder(
        itemCount: widget.bookITEM.length,
        itemBuilder: (BuildContext context, int index) {
          var data=widget.bookITEM.values.first;
          var key_s=widget.bookITEM.keys.first;

          return ListTile(
            title: Text(key_s),
          );
      },

      ),

    );

  }
}
