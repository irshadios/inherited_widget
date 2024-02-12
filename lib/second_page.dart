import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inherited_widget_tyest/inheritedWid.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(IrshadInheritedWidget.of(context).fatherName!)),
    );
  }
}
