import 'package:flutter_hortifruti_painel/app/data/provider/api.dart';
import 'package:flutter_hortifruti_painel/app/modules/store/controller.dart';
import 'package:flutter_hortifruti_painel/app/modules/store/repository.dart';
import 'package:get/get.dart';

class StoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreController>(
        () => StoreController(StoreRepository(Get.find<Api>())));
  }
}
