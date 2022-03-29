import 'package:bottom_navigation_controller/bottom_navigation_controller.dart';
import 'package:flutter/widgets.dart';

class DefaultBottomNavigationController extends StatefulWidget {
  final Widget child;
  final int initialIndex;

  const DefaultBottomNavigationController({
    Key? key,
    required this.child,
    this.initialIndex = 0,
  }) : super(key: key);

  @override
  State<DefaultBottomNavigationController> createState() =>
      _DefaultBottomNavigationControllerState();
}

class _DefaultBottomNavigationControllerState
    extends State<DefaultBottomNavigationController> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BottomNavigationController(
        child: widget.child,
        currentIndex: currentIndex,
        update: (selectedIndex) => setState(() {
          currentIndex = selectedIndex;
        }),
      );
}
