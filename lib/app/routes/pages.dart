import 'package:flutter_hortifruti_painel/app/data/services/storage/service.dart';
import 'package:flutter_hortifruti_painel/app/modules/dashboard/binding.dart';
import 'package:flutter_hortifruti_painel/app/modules/dashboard/page.dart';
import 'package:flutter_hortifruti_painel/app/modules/login/binding.dart';
import 'package:flutter_hortifruti_painel/app/modules/login/page.dart';
import 'package:flutter_hortifruti_painel/app/modules/order/binding.dart';
import 'package:flutter_hortifruti_painel/app/modules/order/page.dart';
import 'package:flutter_hortifruti_painel/app/modules/product/binding.dart';
import 'package:flutter_hortifruti_painel/app/modules/product/page.dart';
import 'package:flutter_hortifruti_painel/app/modules/store/binding.dart';
import 'package:flutter_hortifruti_painel/app/modules/store/page.dart';
import 'package:flutter_hortifruti_painel/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.dashboard,
        page: () => DashboardPage(),
        binding: DashboardBinding(),
        middlewares: [RedirectMiddleware()]),
    GetPage(
      name: Routes.store,
      page: () => StorePage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.product,
      page: () => ProductPage(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.order,
      page: () => OrderPage(),
      binding: OrderBinding(),
    ),
  ];
}

class RedirectMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // if (Get.find<StorageService>().cityId == null) {
    //   return const RouteSettings(name: Routes.selectCity);
    // }

    return null;
  }
}
