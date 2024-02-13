import 'package:hw_5_eco_market/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:hw_5_eco_market/features/cart/domain/entities/order_entity.dart';
import 'package:hw_5_eco_market/features/cart/domain/repositories/cart_repository.dart';

class CartRepoImple implements CartRepository {
  final CartRemoteDataSourse _cartRemoteDataSourse;
  CartRepoImple(this._cartRemoteDataSourse);

  @override
  Future<List<OrderEntity>> getOrders() async =>
      await _cartRemoteDataSourse.getOrders();
}