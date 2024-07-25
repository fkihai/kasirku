import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kasirku/src/core/utils/int_ext.dart';
import 'package:kasirku/src/core/widgets/space_height.dart';
import 'package:kasirku/src/core/widgets/space_width.dart';

import '../../../../core/widgets/text_button_custom.dart';
import '../widget/payment_method.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  static const routerName = 'checkout-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Checkout')),
        body: Padding(
          padding: EdgeInsets.only(bottom: 20.h, right: 20.w, left: 20.w),
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
              SpaceHeight(height: 10.h),
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
              const Spacer(),
              TextButtonCustom(
                title: 'Bayar Langsung',
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
