import 'package:flutter_hortifruti_painel/app/data/provider/api.dart';
import 'package:flutter_hortifruti_painel/app/modules/order/controller.dart';
import 'package:flutter_hortifruti_painel/app/modules/order/repository.dart';
import 'package:get/get.dart';

class OrderBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderController>(
        () => OrderController(OrderRepository(Get.find<Api>())));
  }
}
