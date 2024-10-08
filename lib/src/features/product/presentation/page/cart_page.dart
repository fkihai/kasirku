import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kasirku/src/constant/colors.dart';
import 'package:kasirku/src/core/widgets/space_height.dart';
import 'package:kasirku/src/core/widgets/text_button_custom.dart';
import 'package:kasirku/src/features/product/presentation/page/checkout_page.dart';
import 'package:kasirku/src/features/product/presentation/widget/item_cart.dart';
import 'package:kasirku/src/features/product/presentation/widget/item_list_payment.dart';

import '../../../../../main.dart';
import '../../../../../objectbox.g.dart';
import '../../domain/entities/product.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  static const routerName = 'cart-page';

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final Box<Product> productBox = store.box<Product>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.withOpacity(0.99),
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productBox.isEmpty() ? 0 : productBox.getAll().length,
              itemBuilder: (context, index) {
                Product product = productBox.getAll()[index];
                return ItemCart(
                  id: product.id,
                  price: product.price,
                  name: product.name,
                  qty: product.qty,
                  stock: product.stock,
                  onRefresh: () {
                    setState(() {});
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment Summary', style: TextStyle(fontSize: 15.sp)),
                  SpaceHeight(height: 10.h),
                  const ItemListPayment(title: 'Subtotal', total: 59000),
                  const ItemListPayment(title: 'Delivery free', total: 0),
                  const ItemListPayment(title: 'tax', total: 0),
                  const ItemListPayment(title: 'Total', total: 59000),
                  SpaceHeight(height: 18.sp),
                  TextButtonCustom(
                    title: 'Order Sekarang',
                    onPressed: () {
                      context.pushNamed(CheckoutPage.routerName);
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
