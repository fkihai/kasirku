// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kasirku/src/core/utils/int_ext.dart';
import 'package:kasirku/src/core/widgets/space_height.dart';
import 'package:kasirku/src/core/widgets/text_button_custom.dart';

import '../../../../constant/colors.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});
  static const routerName = 'payment-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Pembayaran',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    13000.currenycyFormatRp,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary),
                  ),
                  SpaceHeight(height: 20.h),
                  Text(
                    'Nama Pelanggan',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                  SpaceHeight(height: 10.h),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5.sp),
                          isDense: false,
                          hintText: 'Masukan Nama Pelanggan (Opsional)',
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SpaceHeight(height: 20.h),
                  Text(
                    'Metode Pembayaran',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                  SpaceHeight(height: 20.h),
                  Row(
                    children: [
                      Container(
                        width: 0.42.sw,
                        padding: EdgeInsets.all(8.0.sp),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColors.primary, width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text('TUNAI',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.sp)),
                      ),
                      const Spacer(),
                      Container(
                        width: 0.42.sw,
                        padding: EdgeInsets.all(8.0.sp),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.grey.withOpacity(0.4),
                              width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(' NON TUNAI',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.sp)),
                      ),
                    ],
                  ),
                  SpaceHeight(height: 20.h),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Jumlah Uang'),
                          SpaceHeight(height: 5.h),
                          Container(
                            width: 0.42.sw,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(5.sp),
                                isDense: false,
                                hintText: 'Rp. 0',
                                hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Kembalian'),
                          SpaceHeight(height: 5.h),
                          Container(
                            width: 0.42.sw,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(5.sp),
                                isDense: false,
                                hintText: 'Rp. 0',
                                hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SpaceHeight(height: 15.h),
                  const Money(value: 0),
                  SpaceHeight(height: 10.h),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Jumlah kolom
                        crossAxisSpacing: 10.0, // Jarak antar kolom
                        mainAxisSpacing: 10.0, // Jarak antar baris
                        childAspectRatio: 4.0,
                      ),
                      itemCount: 4, // Jumlah item dalam grid
                      itemBuilder: (context, index) {
                        return const Money(value: 50000);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(thickness: 1.5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            child: TextButtonCustom(
              title: 'Bayar Langsung',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class Money extends StatelessWidget {
  const Money({super.key, required this.value});
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: Colors.blue.shade50,
      ),
      child: Center(
        child: Text(
          value != 0 ? value.currenycyFormatRp : 'Uang Pas',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
