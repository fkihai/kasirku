import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/colors.dart';

class TextButtonCustom extends StatelessWidget {
  const TextButtonCustom({super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40.h,
      decoration: BoxDecoration(
          color: AppColors.secondary, borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(fontSize: 15, color: AppColors.white),
        ),
      ),
    );
  }
}
