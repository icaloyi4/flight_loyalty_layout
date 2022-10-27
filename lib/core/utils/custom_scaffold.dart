import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  CustomScaffold(this.body, this.gradient); // and maybe other Scaffold properties

  final Widget body;
  final LinearGradient gradient;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
         body: Container(decoration: BoxDecoration(gradient: gradient), child: body),
      );
  }
}