import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kasirku/src/core/utils/int_ext.dart';
import 'package:kasirku/src/core/widgets/space_width.dart';
import 'package:kasirku/src/core/widgets/text_button_custom.dart';
import 'package:kasirku/src/features/product/presentation/widget/add_quantity.dart';

import '../../../../constant/colors.dart';
import '../../../../core/widgets/space_height.dart';

void showCustomModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return SizedBox(
        width: double.infinity,
        height: 0.35.sh,
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Noodles Ramen', style: TextStyle(fontSize: 20.sp)),
              Text(35000.currenycyFormatRp,
                  style: TextStyle(fontSize: 16.sp, color: AppColors.primary)),
              SpaceHeight(height: 20.h),
              Row(
                children: [
                  const AddQuantity(),
                  const SpaceWidth(width: 15),
                  Text('2', style: TextStyle(fontSize: 14.sp)),
                  const SpaceWidth(width: 15),
                  const AddQuantity(increment: true),
                  const Spacer(),
                  Text(
                    35000.currenycyFormatRp,
                    style: TextStyle(fontSize: 16.sp, color: AppColors.primary),
                  ),
                ],
              ),
              const Spacer(),
              const Text('Stock : 30'),
              const Spacer(),
              TextButtonCustom(
                title: 'Add',
                onPressed: () {},
              )
            ],
          ),
        ),
      );
    },
  );
}
