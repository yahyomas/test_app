import 'package:flutter/material.dart';

class KeyboardEscape extends StatelessWidget {
  final Widget child;

  const KeyboardEscape({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
