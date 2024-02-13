import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hw_5_eco_market/features/about/presentation/pages/about/about_page.dart';
import 'package:hw_5_eco_market/features/cart/presentation/pages/cart/cart_page.dart';
import 'package:hw_5_eco_market/features/cart/presentation/pages/cart/empty_cart.dart';
import 'package:hw_5_eco_market/features/cart/presentation/pages/cart/placing_an_order_page.dart';
import 'package:hw_5_eco_market/features/history/presentation/pages/history/history_page.dart';
import 'package:hw_5_eco_market/features/history/presentation/pages/history/order_page.dart';
import 'package:hw_5_eco_market/features/main/presentation/pages/main/main_page.dart';
import 'package:hw_5_eco_market/features/search/presentation/pages/search/search_screen.dart';

import '../../features/main/presentation/pages/home/home_page.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: SeachRoute.page),
        AutoRoute(page: AboutRoute.page),
        AutoRoute(page: CartRoute.page),
        AutoRoute(page: PlacingAnOrderRoute.page),
        AutoRoute(page: EmptyCartRoute.page),
        AutoRoute(page: HistoryRoute.page),
        AutoRoute(page: OrderRoute.page),
      ];
}