import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constant/colors.dart';

class AddQuantity extends StatelessWidget {
  const AddQuantity({super.key, this.increment = false});
  final bool increment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.w,
      height: 25.w,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
        color: increment
            ? AppColors.secondary
            : AppColors.secondary.withOpacity(0.15),
      ),
      child: Center(
          child: Text(
        increment ? '+' : '-',
        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w800),
      )),
    );
  }
}
