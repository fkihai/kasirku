import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kasirku/src/core/utils/int_ext.dart';

import '../../../../constant/colors.dart';

class ItemListPayment extends StatelessWidget {
  const ItemListPayment({super.key, required this.title, required this.total});

  final String title;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.grey.withOpacity(0.8),
          ),
        ),
        const Spacer(),
        Text(total.currenycyFormatRp, style: TextStyle(fontSize: 15.sp)),
      ],
    );
  }
}
