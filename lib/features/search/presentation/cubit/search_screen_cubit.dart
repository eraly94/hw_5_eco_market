import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_5_eco_market/features/search/domain/entities/products_entity.dart';
import 'package:hw_5_eco_market/features/search/domain/repositories/search_repository.dart';

part 'search_screen_state.dart';

class SearchScreenCubit extends Cubit<SearchScreenState> {
  final SearchRepository _searchrepository;
  SearchScreenCubit(this._searchrepository) : super(SearchScreenInitial());
  getProducts({String? productType, String? search}) async {
    emit(SearchScreenLoading());
    try {
      var list = await _searchrepository.getProducts(
          productType: productType, search: search);
      emit(SearchScreenLoaded(products: list));
    } catch (e) {
      emit(SearchScreenFailure());
    }
  }
}