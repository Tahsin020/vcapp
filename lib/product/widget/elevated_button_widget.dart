import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({ Key? key, this.color, required this.title, this.onPressed }) : super(key: key);
  final Color? color;
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
     return ElevatedButton(
      onPressed: onPressed,
      child: SizedBox(
          width: ElevatedButtonStyle.buttonWidth,
          height: ElevatedButtonStyle.buttonHeight,
          child: Center(
              child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ))),
      style: ElevatedButton.styleFrom(
          primary: color, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
    );
  }
}

class ElevatedButtonStyle {
  static const double buttonWidth = 287.0;
  static const double buttonHeight = 59.0;
  //static BorderRadiusGeometry borderRadius = BorderRadius.circular(15.0);
}
