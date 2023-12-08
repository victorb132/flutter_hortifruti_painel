import 'package:flutter_hortifruti_painel/app/data/models/order.dart';
import 'package:flutter_hortifruti_painel/app/data/provider/api.dart';

class OrderListRepository {
  final Api _api;

  OrderListRepository(this._api);

  Future<List<OrderModel>> getOrders() => _api.getOrders();
}
