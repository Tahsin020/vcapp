import 'package:flutter/material.dart';

AppBar appBarWidget({String? title}) {
    return AppBar(
      centerTitle: true,
      title: Text(title ?? ' '),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark_outlined), color: Colors.black)],
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff262d53),
          )),
    );
  }