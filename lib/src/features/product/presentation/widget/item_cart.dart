// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:kasirku/src/core/utils/int_ext.dart';
import 'package:kasirku/src/features/product/domain/entities/product.dart';
import 'package:kasirku/src/features/product/presentation/page/cart_page.dart';
import 'package:kasirku/src/features/product/presentation/widget/add_quantity.dart';

import '../../../../../main.dart';
import '../../../../../objectbox.g.dart';
import '../../../../constant/colors.dart';
import '../../../../core/assets/assets.dart';
import '../riverpod/counter.dart';

class ItemCart extends ConsumerStatefulWidget {
  const ItemCart({
    super.key,
    required this.id,
    required this.price,
    required this.name,
    required this.stock,
    required this.qty,
    required this.onRefresh,
  });

  final int id;
  final int price;
  final String name;
  final int stock;
  final int qty;
  final VoidCallback onRefresh;
  @override
  ConsumerState<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends ConsumerState<ItemCart> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(countProviderGroup(widget.id).notifier).setLimit(widget.stock);
      ref.read(countProviderGroup(widget.id).notifier).setValue(widget.qty);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Box<Product> itemBox = store.box<Product>();
    final countItem = ref.watch(countProviderGroup(widget.id));
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
          title: Text(widget.name, style: TextStyle(fontSize: 12.sp)),
          subtitle: Text(widget.price.currenycyFormatRp,
              style: TextStyle(fontSize: 12.sp, color: AppColors.primary)),
          trailing: Wrap(
            spacing: 10.w,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              InkWell(
                child: const AddQuantity(increment: true),
                onTap: () {
                  ref.read(countProviderGroup(widget.id).notifier).increment();
                },
              ),
              Container(
                alignment: Alignment.center,
                width: 30.w,
                child: Text('$countItem', style: TextStyle(fontSize: 14.sp)),
              ),
              InkWell(
                onTap: () {
                  ref.read(countProviderGroup(widget.id).notifier).decrement();
                  if (countItem == 1) {
                    itemBox.remove(widget.id);
                    widget.onRefresh();
                  }
                },
                child: const AddQuantity(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class ItemCart extends Stat {
//   const ItemCart({
//     super.key,
//     required this.id,
//     required this.price,
//     required this.name,
//     required this.stock,
//     required this.qty,
//   });

//   final int id;
//   final int price;
//   final String name;
//   final int stock;
//   final int qty;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final Box<Product> itemBox = store.box<Product>();
//     ref.read(countProviderGroup(id).notifier).setLimit(stock);
//     ref.read(countProviderGroup(id).notifier).setValue(qty);
//     final countItem = ref.watch(countProviderGroup(id));
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.r),
//           color: AppColors.white,
//         ),
//         child: ListTile(
//           leading: SizedBox(
//             width: 42.w,
//             height: 42.w,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 fit: BoxFit.fill,
//                 Assets.img.friedRice.path,
//               ),
//             ),
//           ),
//           title: Text(name, style: TextStyle(fontSize: 12.sp)),
//           subtitle: Text(price.currenycyFormatRp,
//               style: TextStyle(fontSize: 12.sp, color: AppColors.primary)),
//           trailing: Wrap(
//             spacing: 10.w,
//             crossAxisAlignment: WrapCrossAlignment.center,
//             children: [
//               InkWell(
//                 child: const AddQuantity(increment: true),
//                 onTap: () {
//                   ref.read(countProviderGroup(id).notifier).increment();
//                   itemBox.put(Product(
//                     id: id,
//                     name: name,
//                     qty: qty,
//                     price: price,
//                     stock: stock,
//                   ));
//                 },
//               ),
//               const Spacer(),
//               Text('$countItem', style: TextStyle(fontSize: 14.sp)),
//               const Spacer(),
//               InkWell(
//                 onTap: () {
//                   ref.read(countProviderGroup(id).notifier).decrement();
//                 },
//                 child: const AddQuantity(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
