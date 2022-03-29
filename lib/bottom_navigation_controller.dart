import 'package:flutter/widgets.dart';

class BottomNavigationController extends InheritedWidget {
  final int currentIndex;
  final Function(int) update;

  const BottomNavigationController({
    required Widget child,
    required this.currentIndex,
    required this.update,
  }) : super(child: child);

  static BottomNavigationController? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<BottomNavigationController>();

  @override
  bool updateShouldNotify(BottomNavigationController oldWidget) =>
      currentIndex != oldWidget.currentIndex;
}
