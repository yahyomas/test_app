import 'package:flutter/material.dart';
import 'package:test_project/core/srtyles/colors.dart';
import 'package:test_project/core/srtyles/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.primary,
        ),
        height: 56,
        width: double.maxFinite,
        child: Center(
          child: Text(
            text,
            style: TextStyles.title14,
          ),
        ),
      ),
    );
  }
}
