import 'package:flutter_hortifruti_painel/app/modules/product/widgets/quantity_and_weight/quantity_and_weight_controller.dart';
import 'package:flutter_hortifruti_painel/app/modules/product/widgets/quantity_and_weight/quantity_widget.dart';
import 'package:flutter_hortifruti_painel/app/modules/product/widgets/quantity_and_weight/weight_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class QuantityAndWeightWidget extends StatelessWidget {
  bool isKg;

  QuantityAndWeightWidget({this.isKg = false});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuantityAndWeightController>(
      init: QuantityAndWeightController(isKg: isKg),
      builder: (controller) => Column(
        children: [QuantityWidget(), if (isKg) WeightWidget()],
      ),
    );
  }
}
