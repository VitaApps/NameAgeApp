import 'package:flutter/material.dart';

class TextBoxDecoration {
  static InputDecoration getDecoration({
    required TextEditingController? controller,
    required String? labelText,
    required String? hintText,
  }) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      labelStyle: const TextStyle(color: Colors.yellow),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          color: Colors.white,
          width: 1.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          color: Colors.white,
          width: 1.0,
        ),
      ),
      suffix: IconButton(
        splashRadius: 20,
        icon: const Icon(Icons.clear, color: Colors.white),
        onPressed: () => controller?.clear(),
      ),
    );
  }
}
