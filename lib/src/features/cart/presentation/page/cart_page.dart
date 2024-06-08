import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kasirku/src/constant/colors.dart';
import 'package:kasirku/src/core/widgets/space_height.dart';
import 'package:kasirku/src/core/widgets/text_button_custom.dart';
import 'package:kasirku/src/features/cart/presentation/widget/item_cart.dart';
import 'package:kasirku/src/features/cart/presentation/widget/item_list_payment.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  static const routerName = 'cart-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.withOpacity(0.99),
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Cart', style: TextStyle(fontSize: 14.sp)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return const ItemCart();
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: SizedBox(
              width: double.infinity,
              height: 150.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment Summary', style: TextStyle(fontSize: 15.sp)),
                  SpaceHeight(height: 10.h),
                  const ItemListPayment(title: 'Subtotal', total: '59000'),
                  const ItemListPayment(title: 'Delivery free', total: 'free'),
                  const ItemListPayment(title: 'Total', total: '59000'),
                  SpaceHeight(height: 18.sp),
                  TextButtonCustom(
                    title: 'Order Now',
                    onPressed: () {},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
