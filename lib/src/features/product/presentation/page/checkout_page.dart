import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kasirku/src/constant/colors.dart';
import 'package:kasirku/src/core/utils/int_ext.dart';
import 'package:kasirku/src/core/widgets/space_height.dart';
import 'package:kasirku/src/features/product/presentation/page/payment_page.dart';

import '../../../../core/widgets/text_button_custom.dart';
import '../widget/payment_method.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  static const routerName = 'checkout-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Checkout')),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Metode Pemesanan',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SpaceHeight(height: 10.h),
                  const Row(
                    children: [
                      PaymentMethod(
                        name: 'Bayar Langsung',
                        description: 'Pembeli langsung melakukan pembayaran',
                      ),
                      Spacer(),
                      PaymentMethod(
                        name: 'Piutang',
                        description: 'Pembeli berhutang kepada penjual',
                      ),
                    ],
                  ),
                  SpaceHeight(height: 10.h),
                  const Row(
                    children: [
                      PaymentMethod(
                        name: 'Bayar Langsung',
                        description: 'Pembeli langsung melakukan pembayaran',
                      ),
                      Spacer(),
                      PaymentMethod(
                        name: 'Bayar Langsung',
                        description: 'Pembeli langsung melakukan pembayaran',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1.5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Rincian Pemesanan',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SpaceHeight(height: 10.h),
                  Table(
                    children: [
                      TableRow(
                        children: [
                          const TableCell(child: Text('Tahu Bulat')),
                          TableCell(
                              child: Text('${30000.currenycyFormatRp} x 10 ')),
                          TableCell(
                            child: Text(30000.currenycyFormatRp,
                                textAlign: TextAlign.end),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          const TableCell(child: Text('Siomay')),
                          TableCell(
                              child: Text('${30000.currenycyFormatRp} x 10 ')),
                          TableCell(
                            child: Text(30000.currenycyFormatRp,
                                textAlign: TextAlign.end),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          const TableCell(child: Text('French Fries')),
                          TableCell(
                              child: Text('${300000.currenycyFormatRp} x 80')),
                          TableCell(
                            child: Text(30000.currenycyFormatRp,
                                textAlign: TextAlign.end),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SpaceHeight(height: 10.h),
                  Row(
                    children: [
                      Text(
                        'Total Pemesanan',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(13000.currenycyFormatRp)
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        13000.currenycyFormatRp,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Divider(thickness: 1.5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: TextButtonCustom(
                title: 'Bayar Langsung',
                onPressed: () {
                  context.pushNamed(PaymentPage.routerName);
                },
              ),
            ),
          ],
        ));
  }
}
