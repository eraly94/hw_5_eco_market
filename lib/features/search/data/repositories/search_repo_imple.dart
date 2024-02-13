import 'package:hw_5_eco_market/features/search/data/datasources/search_remote_data_source.dart';
import 'package:hw_5_eco_market/features/search/domain/entities/products_entity.dart';
import 'package:hw_5_eco_market/features/search/domain/repositories/search_repository.dart';

class SearchRepoImple implements SearchRepository {
  final SearchRemoteDataSourse _remoteDataSourse;
  SearchRepoImple(this._remoteDataSourse);
  @override
  Future<List<ProductEntity>> getProducts(
          {String? productType, String? search}) async =>
      await _remoteDataSourse.getProducts(
          productType: productType, search: search);
}