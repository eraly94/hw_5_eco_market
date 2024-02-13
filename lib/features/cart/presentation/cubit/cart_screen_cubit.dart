import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_5_eco_market/features/cart/domain/entities/order_entity.dart';
import 'package:hw_5_eco_market/features/cart/domain/repositories/cart_repository.dart';

part 'cart_screen_state.dart';

class CartScreenCubit extends Cubit<CartScreenState> {
  final CartRepository _cartRepository;

  CartScreenCubit(this._cartRepository) : super(CartScreenInitial());
  getOrders() async {
    emit(CartScreenLoading());
    try {
      var list = await _cartRepository.getOrders();
      emit(CartScreenLoaded(orders: list));
    } catch (e) {
      emit(CartScreenFailure());
    }
  }
}