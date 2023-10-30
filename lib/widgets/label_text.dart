import 'package:flutter/material.dart';
import 'package:gbverse/utils/colors.dart';

class LabelText extends StatelessWidget {
  const LabelText({
    super.key, required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label, style: TextStyle(color: AppColors.headingColor, fontWeight: FontWeight.bold, fontSize: 18),);
  }
}