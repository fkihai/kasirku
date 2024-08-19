import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/colors.dart';

class TextButtonCustom extends StatelessWidget {
  const TextButtonCustom({
    super.key,
    required this.title,
    this.onPressed,
    this.width,
    this.solid = true,
  });
  final String title;
  final Function()? onPressed;
  final double? width;
  final bool? solid;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: 40.h,
      decoration: BoxDecoration(
        color: solid == true ? AppColors.primary : AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1.sp, color: AppColors.primary),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: solid == true ? AppColors.white : AppColors.primary,
          ),
        ),
      ),
    );
  }
}
