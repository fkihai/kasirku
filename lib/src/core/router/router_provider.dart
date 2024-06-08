import 'package:go_router/go_router.dart';
import 'package:kasirku/src/features/cart/presentation/page/cart_page.dart';

import '../../features/home/presentation/page/home_page.dart';
import '../../features/login/presentation/page/login_page.dart';

final GoRouter routerProvider = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/login',
      name: LoginPage.routerName,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: LoginPage()),
    ),
    GoRoute(
        path: '/',
        name: HomePage.routerName,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: HomePage()),
        routes: [
          GoRoute(
            path: 'cart',
            name: CartPage.routerName,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: CartPage()),
          ),
        ])
  ],
);
