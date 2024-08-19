import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kasirku/src/constant/colors.dart';
import 'package:kasirku/src/core/widgets/drawer_widget.dart';
import 'package:kasirku/src/features/product/presentation/widget/item_total.dart';
import 'package:kasirku/src/features/product/presentation/widget/search_field.dart';

import '../../../../core/widgets/space_height.dart';
import '../widget/product_category.dart';
import '../widget/product_menu.dart';

List<Map<String, dynamic>> categories = [
  {"name": 'All', "icon": Icons.fastfood},
  {"name": 'Snack', "icon": Icons.local_pizza},
  {"name": 'Food', "icon": Icons.ramen_dining},
  {"name": 'Drink', "icon": Icons.wine_bar},
  {"name": 'Fruits', "icon": Icons.egg_alt},
];

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});
  static const routerName = 'product-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PRODUCT'),
        centerTitle: true,
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 13.w),
        child: Column(
          children: [
            const SearchField(),
            SpaceHeight(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var item = 0; item < categories.length; item++)
                    ProductCategory(
                      icon: categories[item]['icon'],
                      title: '${categories[item]['name']}',
                    )
                ],
              ),
            ),
            SpaceHeight(height: 15.h),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 0.78,
                children: <Widget>[
                  for (var i = 0; i < 8; i++) const ProductMenu()
                ],
              ),
            ),
            const ItemTotal(totalItem: 2, totalPrice: 956000)
          ],
        ),
      ),
    );
  }
}
