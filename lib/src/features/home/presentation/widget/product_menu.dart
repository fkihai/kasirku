import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constant/colors.dart';
import '../../../../core/assets/assets.dart';
import '../../../../core/widgets/space_height.dart';
import 'detail_product.dart';

class ProductMenu extends StatelessWidget {
  const ProductMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCustomModalBottomSheet(context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              offset: const Offset(0.0, 1.0),
              blurRadius: 0.5,
              spreadRadius: 0.1,
            )
          ],
        ),
        // padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 90.h,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0.0, 1.0),
                    blurRadius: 0.1,
                    spreadRadius: 0.1,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  Assets.img.friedRice.path,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SpaceHeight(height: 10),
            Container(
              width: 40.w,
              height: 18.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange.shade900,
              ),
              child: const Center(
                child: Text('-30%',
                    style: TextStyle(color: AppColors.white, fontSize: 10)),
              ),
            ),
            const SpaceHeight(height: 10),
            Text('Noodles Ramem', style: TextStyle(fontSize: 13.sp)),
            const Text('With Spicy Souce',
                style: TextStyle(fontSize: 10, color: AppColors.grey)),
            const SpaceHeight(height: 10),
            Text('Rp.35.000', style: TextStyle(fontSize: 13.sp)),
          ],
        ),
      ),
    );
  }
}
