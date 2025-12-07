import 'package:flutter/material.dart';

/// A simple button widget.
class Button extends StatelessWidget {
  const Button({super.key, required this.text, this.onPressed});

  /// The text to display on the button
  final String text;

  /// Optional callback function that runs when button is tapped.
  /// VoidCallback is shorthand for: void Function() - a function with no parameters that returns nothing.
  /// The ? makes it nullable, meaning it can be null (button will be disabled if null).
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF1f1f1f),
            border: Border.all(color: const Color(0x33F5F5F5), width: 4.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0x261F1F1F),
                blurRadius: 4,
                spreadRadius: 0,
                offset: const Offset(0, 2),
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xFFFDFBF5),
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              height: 22.0 / 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
