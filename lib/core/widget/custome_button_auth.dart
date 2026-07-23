import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/widget/backgroundGradient.dart';

class CustomeButtonAuth extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  const CustomeButtonAuth({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      onPressed: onPressed,
      minWidth: double.infinity,
    animationDuration: Duration(
      milliseconds: 300,
    ),
      
      child: Backgroundgradient(
        height:50 ,
        child:
       Text(
        text,
        style: TextStyle(
          color: AppColors.cWhite,
          fontSize: AppFontSize.fontSize16,
          fontWeight: FontWeight.bold,
        ),
      ),)
    );
  }
}
