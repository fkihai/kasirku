import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constant/colors.dart';
import '../../../../core/widgets/space_height.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0.0, 1.0),
                    blurRadius: 1.1,
                    spreadRadius: 0.5,
                  )
                ]),
            child: Icon(
              icon,
              size: 30.r,
              color: AppColors.primary,
            ),
          ),
          SpaceHeight(height: 5.h),
          Text(title)
        ],
      ),
    );
  }
}
