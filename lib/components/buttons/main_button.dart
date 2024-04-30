import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class MainButton extends StatefulWidget {
  final String text;
  final Color textColor, backgroundColor;
  final VoidCallback onTap;
  const MainButton({super.key, required this.text, required this.textColor, required this.backgroundColor, required this.onTap});

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 61,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
