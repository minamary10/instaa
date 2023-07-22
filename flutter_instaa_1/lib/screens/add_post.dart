// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_instaa_1/shared/colors.dart';


class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
     body: Center(
       child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.upload,
                size: 55,
              )),
     ),
    );
  }
}