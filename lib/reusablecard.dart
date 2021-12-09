import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color? couleur;
  final Widget? Cardchild;
  final Function? onPress;

  MyCard({this.couleur, this.Cardchild,  this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Cardchild,
        height: 200,
        width: 390,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: couleur,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      onTap: onPress as void Function()? ,
    );
  }
}
