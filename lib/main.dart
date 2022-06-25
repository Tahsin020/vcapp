import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vcapp/feature/home/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        backgroundColor: const Color(0xfff7F6FB),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        textTheme: const TextTheme(
          headline4: TextStyle(
            color: Color(0xff262d53),
            fontSize: 24.0,
           fontWeight: FontWeight.bold,
           fontFamily: 'open_sans',
          ),
          headline5: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.normal,
            fontFamily: 'poppins_medium',
          ),
          headline6: TextStyle(
            color: Color(0xff585858),
            fontSize: 16,
            fontWeight: FontWeight.normal,
            fontFamily: 'poppins',
          )
        )
      ),
      title: "Cv App",
      home: const HomeView(),
    );
  }
}