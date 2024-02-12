import 'package:flutter/widgets.dart';
import 'package:inherited_widget_tyest/data.dart';

class InheritedWid extends InheritedWidget {
  final Widget child;

  final Database database;

  InheritedWid({required this.child, required this.database})
      : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static InheritedWid of(BuildContext context) {
    InheritedWid inheritWid = context.dependOnInheritedWidgetOfExactType()!;
    return inheritWid;
  }
}

class IrshadInheritedWidget extends InheritedWidget {
  final String? name;
  final String? address;
  final String? fatherName;

  IrshadInheritedWidget(
      {this.name, this.address, this.fatherName, required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw true;
  }

  static IrshadInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<IrshadInheritedWidget>()!;
  }
}
