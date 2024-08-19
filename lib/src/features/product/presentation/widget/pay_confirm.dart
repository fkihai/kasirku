import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kasirku/src/core/assets/assets.gen.dart';
import 'package:kasirku/src/core/widgets/space_height.dart';

import '../../../../core/widgets/text_button_custom.dart';

void showCustomModalPayCheck(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.white,
        ),
        width: double.infinity,
        height: 0.50.sh,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.img.paymentCheck.path,
              width: 120.w,
            ),
            SpaceHeight(height: 10.h),
            Text(
              'Pembayaran Rp13.000',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            ),
            SpaceHeight(height: 10.h),
            const Text(
              'Konfirmasi pembayaran Rp 13.000 telah terbayarkan oleh pembeli',
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Row(
              children: [
                TextButtonCustom(
                  title: 'Batal',
                  width: 0.43.sw,
                  solid: false,
                  onPressed: () => context.pop(),
                ),
                const Spacer(),
                TextButtonCustom(
                  title: 'OK',
                  width: 0.43.sw,
                  onPressed: () => context.pop(),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
