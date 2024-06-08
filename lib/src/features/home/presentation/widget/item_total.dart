import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kasirku/src/features/cart/presentation/page/cart_page.dart';

import '../../../../constant/colors.dart';
import '../../../../core/widgets/space_width.dart';

class ItemTotal extends StatelessWidget {
  const ItemTotal(
      {super.key, required this.totalItem, required this.totalPrice});
  final int totalItem;
  final int totalPrice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(CartPage.routerName);
      },
      child: Container(
        width: double.infinity,
        height: 40.h,
        padding: EdgeInsets.only(left: 20.w, right: 5.w),
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Text('$totalItem items selected',
                style: TextStyle(color: AppColors.white, fontSize: 13.sp)),
            const Spacer(),
            Text('Rp.$totalPrice',
                style: TextStyle(color: AppColors.white, fontSize: 13.sp)),
            SpaceWidth(width: 10.w),
            Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.white),
                  color: AppColors.secondary,
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
