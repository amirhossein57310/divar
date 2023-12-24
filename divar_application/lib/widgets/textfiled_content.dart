import 'package:flutter/material.dart';

class TextFiledContent extends StatelessWidget {
  final String text;
  const TextFiledContent(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          showCursor: false,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: text,
            contentPadding: const EdgeInsets.only(
              top: 20.0,
              right: 20,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.grey[100],
            filled: true,
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
              gapPadding: 8,
              borderRadius: BorderRadius.circular(4.0), // Set the border radius
            ),
          ),
        ),
      ),
    );
  }
}
