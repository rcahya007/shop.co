import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActionButton extends StatelessWidget {
  Color? colorButton;
  BoxBorder? border;
  VoidCallback onTap;
  Widget? widget;

  ActionButton({
    Key? key,
    this.colorButton,
    this.border,
    required this.onTap,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: border,
          color: colorButton,
          borderRadius: BorderRadius.circular(
            62,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: widget,
          ),
        ),
      ),
    );
  }
}
