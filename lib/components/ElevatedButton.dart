import 'package:flutter/material.dart';

class myBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  const myBtn({super.key, this.onPressed, this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:
        onPressed,
        child: child);
  }
}
