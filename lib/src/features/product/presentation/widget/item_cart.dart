import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kasirku/src/constant/colors.dart';
import 'package:kasirku/src/core/utils/int_ext.dart';

import '../../../../core/assets/assets.gen.dart';
import 'add_quantity.dart';

class ItemCart extends ConsumerWidget {
  const ItemCart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.white,
        ),
        child: ListTile(
          leading: SizedBox(
            width: 42.w,
            height: 42.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                fit: BoxFit.fill,
                Assets.img.friedRice.path,
              ),
            ),
          ),
          title: Text('Noodles Ramen', style: TextStyle(fontSize: 12.sp)),
          subtitle: Text(35000.currenycyFormatRp,
              style: TextStyle(fontSize: 12.sp, color: AppColors.primary)),
          trailing: Wrap(
            spacing: 10.w,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              const AddQuantity(),
              Text('10',
                  style: TextStyle(fontSize: 12.sp),
                  textAlign: TextAlign.center),
              const AddQuantity(
                increment: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
