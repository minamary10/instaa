// ignore_for_file: unused_import, avoid_print

import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_instaa_1/firebase_servces/storage.dart';
import 'package:flutter_instaa_1/model/users.dart';
import 'package:flutter_instaa_1/shared/snackbar.dart';

class AuthMethods {
  register({
    required emailll,
    required passworddd,
    required context,
    required titleee,
    required usernameee,
    required imgPath,
    required imgName,
  }) async {
    String message = "ERROR => Not starting the code";

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailll,
        password: passworddd,
      );

      message = "ERROR => Registered only";
// _______________________________________________________________________

      String urlll = await getImgUrl(imgName: imgName, imgPath: imgPath);

// _____________________________________________________________________

// firebase firestore (Database)
      CollectionReference users =
          FirebaseFirestore.instance.collection('userSSS');

      UserData userr = UserData(
        email: emailll,
        password: passworddd,
        username: usernameee,
        title: titleee,
        profileImg: urlll,
      );

      users
          .doc(credential.user!.uid)
          .set(userr.convert2Map())
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));

      message = " Registered & User Added 2 DB ♥";
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, "ERROR :  ${e.code} ");
    } catch (e) {
      print(e);
    }

    showSnackBar(context, message);
  }
}
