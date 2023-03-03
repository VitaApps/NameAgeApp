import 'package:flutter/material.dart';

class TextBoxLayout extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final bool autocorrect;
  final TextAlign textAlign;
  final TextStyle? style;
  final InputDecoration? decoration;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const TextBoxLayout({
    Key? key,
    this.controller,
    this.textInputAction,
    this.autocorrect = true,
    this.textAlign = TextAlign.start,
    this.style,
    this.decoration,
    this.onChanged,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: textInputAction,
      autocorrect: autocorrect,
      textAlign: textAlign,
      decoration: decoration,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      style: style,
    );
  }
}
