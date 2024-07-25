import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kasirku/src/constant/colors.dart';
import 'package:kasirku/src/features/dashboard/presentation/page/dashboard_page.dart';

import '../../features/product/presentation/page/product_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: ListView(
        children: [
          const HeaderWidget(
            name: 'fikri haikal',
            email: 'fikrihaikal568@gmail.com',
            role: 'admin',
          ),
          ListTile(
            leading: const Icon(Icons.dashboard, color: AppColors.grey),
            title: const Text('Dashboard',
                style: TextStyle(color: AppColors.grey)),
            onTap: () => context.pushNamed(DashboardPage.routerName),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title:
                const Text('Product', style: TextStyle(color: AppColors.grey)),
            onTap: () => context.pushNamed(ProductPage.routerName),
          ),
          const ListTile(
            leading: Icon(Icons.kitchen, color: AppColors.grey),
            title: Text('Variant', style: TextStyle(color: AppColors.grey)),
          ),
          const ListTile(
            leading: Icon(Icons.list_alt, color: AppColors.grey),
            title: Text('Order', style: TextStyle(color: AppColors.grey)),
          ),
          const ListTile(
            leading: Icon(Icons.paid, color: AppColors.grey),
            title: Text('Transaction', style: TextStyle(color: AppColors.grey)),
          ),
          const ListTile(
            leading: Icon(Icons.kitchen, color: AppColors.grey),
            title: Text('Staff', style: TextStyle(color: AppColors.grey)),
          ),
          const ListTile(
            leading: Icon(Icons.settings, color: AppColors.grey),
            title: Text('Setting', style: TextStyle(color: AppColors.grey)),
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.name,
    required this.email,
    required this.role,
  });

  final String name;
  final String email;
  final String role;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Row(
        children: [
          CircleAvatar(
            radius: 28.w,
            child: const Icon(Icons.person),
          ),
          SizedBox(width: 10.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name.toUpperCase(),
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
              Text(email, style: TextStyle(fontSize: 14.sp)),
              Text(
                role,
                style: TextStyle(fontSize: 14.sp, color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }
}
