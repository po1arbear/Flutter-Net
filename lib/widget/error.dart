import 'package:flutter/material.dart';

class CustomErrorWidget extends StatefulWidget {
  @override
  _CustomErrorState createState() => _CustomErrorState();
}

class _CustomErrorState extends State<CustomErrorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("error..."),
      ),
    );
  }
}