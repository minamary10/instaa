// ignore_for_file: depend_on_referenced_packages, unused_import, prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instaa_1/firebase_options.dart';
import 'package:flutter_instaa_1/screens/register.dart';
import 'package:flutter_instaa_1/screens/sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBYhFGptwFhUsvHAGUkrmfD2f4_z-vMs-g",
            authDomain: "instaa-d24f0.firebaseapp.com",
            projectId: "instaa-d24f0",
            storageBucket: "instaa-d24f0.appspot.com",
            messagingSenderId: "885129253015",
            appId: "1:885129253015:web:4032b2245dd96a39b919d2",
            measurementId: "G-EB7JKWVVSF"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Register(),
      // home: Resposive(
      //   myMobileScreen: MobileScerren(),
      //   myWebScreen: WebScerren(),
      // ),
    );
  }
}
