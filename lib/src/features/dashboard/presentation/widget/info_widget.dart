import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kasirku/src/core/utils/int_ext.dart';
import 'package:kasirku/src/core/widgets/space_height.dart';

class GruopInfoWidget extends StatelessWidget {
  const GruopInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const InfoWidget(
              title: 'Transaksi Lunas',
              value: 0,
            ),
            SpaceHeight(height: 10.h),
            const InfoWidget(
              title: 'Tunai',
              value: 0,
              currency: true,
            ),
            SpaceHeight(height: 10.h),
            const InfoWidget(
              title: 'Omzet',
              value: 0,
              currency: true,
            ),
            SpaceHeight(height: 10.h),
            const InfoWidget(
              title: 'Transaksi Piutang',
              value: 0,
            ),
            SpaceHeight(height: 10.h),
            const InfoWidget(
              title: 'Piutang Terbayar',
              value: 0,
              currency: true,
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            const InfoWidget(
              title: 'Produk Terjual',
              value: 0,
            ),
            SpaceHeight(height: 10.h),
            const InfoWidget(
              title: 'Non Tunai',
              value: 0,
              currency: true,
            ),
            SpaceHeight(height: 10.h),
            const InfoWidget(
              title: 'Profit',
              value: 0,
              currency: true,
            ),
            SpaceHeight(height: 10.h),
            const InfoWidget(
              title: 'Piutang',
              value: 0,
              currency: true,
            ),
            SpaceHeight(height: 10.h),
            const InfoWidget(
              title: 'Sisa Piutang',
              value: 0,
              currency: true,
            ),
            SpaceHeight(height: 10.h),
          ],
        ),
      ],
    );
  }
}

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.title,
    required this.value,
    this.currency = false,
  });

  final String title;
  final int value;
  final bool currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155.w,
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.red, fontSize: 14),
          ),
          SpaceHeight(height: 2.sp),
          Text(
            currency ? value.currenycyFormatRp : '$value',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
