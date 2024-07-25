import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kasirku/src/constant/colors.dart';
import 'package:kasirku/src/core/utils/int_ext.dart';

import '../../../../core/assets/assets.gen.dart';
import '../../../product/presentation/widget/add_quantity.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({super.key});

  @override
  Widget build(BuildContext context) {
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
          title: const Text('Noodles Ramen', style: TextStyle(fontSize: 14)),
          subtitle: Text(35000.currenycyFormatRp,
              style: const TextStyle(fontSize: 14, color: AppColors.primary)),
          trailing: Wrap(
            spacing: 10.w,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: const [
              AddQuantity(),
              Text('10',
                  style: TextStyle(fontSize: 14), textAlign: TextAlign.center),
              AddQuantity(increment: true),
            ],
          ),
        ),
      ),
    );
  }
}
