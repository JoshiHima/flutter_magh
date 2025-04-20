import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback func;
  final String label;
  final Color color;
  const CommonButton({super.key,
    required this.label,
    required this.func,
    required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor:  Colors.white,
      ),
        onPressed: func, child: Text(label)
    );
  }
}
