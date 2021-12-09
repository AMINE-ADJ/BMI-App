import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMI());

class BMI extends StatelessWidget {
  const BMI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF090F32),
        // primaryColorDark: Color(0xFF090F32), there is a problem , it doesn t work ...
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF090F32)),
      ),
      home: InputPage(),
    );
  }
}
