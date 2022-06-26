import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, this.data}) : super(key: key);
  final String? data;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline), color: Colors.black)],
      centerTitle: true,
      title: Text(
        data ?? '',
        style: Theme.of(context).textTheme.headline5?.copyWith(
            fontSize: 14.0,
            color: const Color(0xff1050a0),
            fontFamily: 'poppins_semibold',
            fontWeight: FontWeight.normal),
      ),
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff262d53),
          )),
    );
  }
}
