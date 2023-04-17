import 'package:firebase_core/firebase_core.dart';
  import 'package:firebaselogin1/main1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BLOC1/book_bloc.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BookBloc(),),

      ],
        child: MaterialApp(
          home: HomePage(),
        ));
  }
}


