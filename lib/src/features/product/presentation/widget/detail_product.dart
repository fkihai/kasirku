import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kasirku/src/core/utils/int_ext.dart';
import 'package:kasirku/src/core/widgets/text_button_custom.dart';
import 'package:kasirku/src/features/product/presentation/widget/add_quantity.dart';

import '../../../../constant/colors.dart';
import '../../../../core/widgets/space_height.dart';
import '../riverpod/counter.dart';

class DetailProduct extends ConsumerWidget {
  const DetailProduct({super.key, required this.price, required this.stock});
  final int price;
  final int stock;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(countProvider);
    ref.read(countProvider.notifier).setLimit(stock);

    return SizedBox(
      width: double.infinity,
      height: 0.35.sh,
      child: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Noodles Ramen', style: TextStyle(fontSize: 20.sp)),
            Text(price.currenycyFormatRp,
                style: TextStyle(fontSize: 16.sp, color: AppColors.primary)),
            SpaceHeight(height: 20.h),
            Row(
              children: [
                SizedBox(
                  width: 120.w,
                  child: Row(
                    children: [
                      InkWell(
                        child: const AddQuantity(increment: true),
                        onTap: () {
                          ref.read(countProvider.notifier).increment();
                        },
                      ),
                      const Spacer(),
                      Text('$count', style: TextStyle(fontSize: 14.sp)),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          ref.read(countProvider.notifier).decrement();
                        },
                        child: const AddQuantity(),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  (price * count).currenycyFormatRp,
                  style: TextStyle(fontSize: 16.sp, color: AppColors.primary),
                ),
              ],
            ),
            const Spacer(),
            Text('Stock : ${stock - count}'),
            const Spacer(),
            TextButtonCustom(
              title: 'Add',
              onPressed: () {
                context.pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
