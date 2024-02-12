import 'package:flutter/material.dart';
import 'package:inherited_widget_tyest/data.dart';
import 'package:inherited_widget_tyest/inheritedWid.dart';
import 'package:inherited_widget_tyest/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return IrshadInheritedWidget(
      name: "Kautilya",
      address: "Jp nagar 2nd cross shimgoa",
      fatherName: "Nazeer ahmed",
      child: InheritedWid(
          child: MaterialApp(home: const MyHomePage(), theme: ThemeData.dark()),
          database: Data()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Symbol lib = const Symbol("foo_lib");

  @override
  Widget build(BuildContext context) {
    print(lib);
    var data = InheritedWid.of(context).database;
    return Scaffold(
      body: Column(
        children: [
          Container(child: Text(data.name())),
          // Container(child: Text(onlyAscy())),

          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => SecondPage())));
              },
              child: Text("open page"))
        ],
      ),
    );
  }
}
