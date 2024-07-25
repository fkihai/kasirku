import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kasirku/src/core/widgets/drawer_widget.dart';
import 'package:kasirku/src/core/widgets/space_height.dart';
import 'package:kasirku/src/core/widgets/space_width.dart';

import '../widget/info_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const routerName = 'dashboard-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DASHBOARD'),
        centerTitle: true,
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Halo, Fikri Haikal', style: TextStyle(fontSize: 20)),
              const Text('Peride Tahun 2024', style: TextStyle(fontSize: 18)),
              SpaceHeight(height: 10.h),
              const GruopInfoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
