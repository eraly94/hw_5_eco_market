import 'package:hw_5_eco_market/features/search/domain/entities/products_entity.dart';

abstract class SearchRepository {
  Future<List<ProductEntity>> getProducts(
      {String? productType, String? search});
}