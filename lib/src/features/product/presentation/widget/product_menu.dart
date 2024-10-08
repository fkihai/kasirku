import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kasirku/src/core/utils/int_ext.dart';

import '../../../../constant/colors.dart';
import '../../../../core/assets/assets.dart';
import '../../../../core/widgets/space_height.dart';
import 'detail_product.dart';

class ProductMenu extends ConsumerWidget {
  const ProductMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) => DetailProduct(
            price: 16000,
            stock: 10,
            name: 'Noodles Ramen',
          ),
        );
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
            const SpaceHeight(height: 20),
            Text('Noodles Ramen', style: TextStyle(fontSize: 13.sp)),
            const SpaceHeight(height: 10),
            Text(3500.currenycyFormatRp, style: TextStyle(fontSize: 13.sp)),
          ],
        ),
      ),
    );
  }
}
