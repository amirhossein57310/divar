import 'package:flutter/material.dart';

class CodeContainer extends StatelessWidget {
  const CodeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
      ),
      height: 48,
      width: 73.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[300],
      ),
    );
  }
}
