// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RaisedButtonCustomWidget extends StatelessWidget {
  final IconData icon;
  final String? text;
  final Function? onPressed;
  final Color borderColor;
  const RaisedButtonCustomWidget({
    Key? key,
    required this.icon,
    this.text,
    this.onPressed,
    this.borderColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MaterialButton(
      color: borderColor,
      onPressed: ()=> onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
