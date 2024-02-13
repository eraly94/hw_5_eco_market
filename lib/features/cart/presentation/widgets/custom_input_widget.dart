import 'package:flutter/material.dart';
import 'package:hw_5_eco_market/config/theme/app_colors.dart';


class CustomInputWidget extends StatelessWidget {
  const CustomInputWidget({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.grey,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.grey)),
    );
  }
}