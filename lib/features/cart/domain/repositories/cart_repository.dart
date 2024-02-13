import 'package:hw_5_eco_market/features/cart/domain/entities/order_entity.dart';

abstract class CartRepository {
  Future<List<OrderEntity>> getOrders();
}