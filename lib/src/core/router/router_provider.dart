import 'package:go_router/go_router.dart';
import 'package:kasirku/src/features/cart/presentation/page/cart_page.dart';
import 'package:kasirku/src/features/checkout/presentation/page/checkout_page.dart';
import 'package:kasirku/src/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:kasirku/src/features/payment/presentation/page/payment_page.dart';
import 'package:kasirku/src/features/product/presentation/page/product_page.dart';

import '../../features/login/presentation/page/login_page.dart';

final GoRouter routerProvider = GoRouter(
  initialLocation: '/product',
  routes: [
    GoRoute(
      path: '/login',
      name: LoginPage.routerName,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
        path: '/',
        name: DashboardPage.routerName,
        builder: (context, state) => const DashboardPage(),
        routes: [
          GoRoute(
              path: 'cart',
              name: CartPage.routerName,
              builder: (context, state) => const CartPage(),
              routes: [
                GoRoute(
                    path: 'checkout',
                    name: CheckoutPage.routerName,
                    builder: (context, state) => const CheckoutPage(),
                    routes: [
                      GoRoute(
                        path: 'payment',
                        name: PaymentPage.routerName,
                        builder: (context, state) => const PaymentPage(),
                      )
                    ])
              ]),
        ]),
    GoRoute(
      path: '/product',
      name: ProductPage.routerName,
      builder: (context, state) => const ProductPage(),
    )
  ],
);
