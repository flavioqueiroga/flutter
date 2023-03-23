import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  final String label;
  final bool isNumericKeyboard;
  final TextEditingController controller;
  final Function(String) onSubmitted;

  AdaptativeTextField({
    this.label,
    this.isNumericKeyboard,
    this.controller,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
              controller: controller,
              keyboardType: isNumericKeyboard
                  ? TextInputType.numberWithOptions(decimal: true)
                  : TextInputType.text,
              onSubmitted: onSubmitted,
              placeholder: label,
              padding: EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            controller: controller,
            keyboardType: isNumericKeyboard
                ? TextInputType.numberWithOptions(decimal: true)
                : TextInputType.text,
            onSubmitted: onSubmitted,
            decoration: InputDecoration(
              labelText: label,
            ),
          );
  }
}
