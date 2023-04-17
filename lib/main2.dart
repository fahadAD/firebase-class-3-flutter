
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


 class Google_Helper{

 static FirebaseAuth firebase_auth=FirebaseAuth.instance;
 static final  firebase_firestore=FirebaseFirestore.instance;

 }

 pageRoute(BuildContext context,Widget child){

  Navigator.push(context, MaterialPageRoute(builder: (context) => child,));
  
 }