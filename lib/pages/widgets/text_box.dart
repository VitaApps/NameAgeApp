import 'package:flutter/material.dart';
import 'package:name_age_app/pages/widgets/text_box_decoration.dart';
import 'package:name_age_app/pages/widgets/text_box_layout.dart';

class TextBox extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final double? height;
  final EdgeInsets? padding;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const TextBox({
    Key? key,
    this.controller,
    this.labelText,
    this.hintText,
    this.onChanged,
    this.height = 70,
    this.padding = const EdgeInsets.all(10),
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: height,
      padding: padding,
      duration: const Duration(milliseconds: 300),
      child: TextBoxLayout(
        controller: controller,
        textInputAction: TextInputAction.send,
        autocorrect: false,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        decoration: TextBoxDecoration.getDecoration(
          controller: controller,
          labelText: labelText,
          hintText: hintText,
        ),
        onChanged: onChanged,
        onSubmitted: onSubmitted,
      ),
    );
  }
}
