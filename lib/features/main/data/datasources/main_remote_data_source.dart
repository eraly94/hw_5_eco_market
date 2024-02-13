import 'package:dio/dio.dart';
import 'package:hw_5_eco_market/core/error/exception.dart';
import 'package:hw_5_eco_market/features/main/data/models/category_model.dart';


abstract class MainRemoteDataSource {
  Future<List<CategoryModel>> getCategory();
}

class MainRemoteDataSourceImpl implements MainRemoteDataSource {
  final Dio _dio;

  MainRemoteDataSourceImpl(this._dio);

  @override
  Future<List<CategoryModel>> getCategory() async {
    try {
      var response = await _dio
          .get('https://neobook.online/ecobak/product-category-list/');

      if (response.statusCode == 200 || response.statusCode == 201) {
        List<dynamic> data = response.data;

        return data.map((e) => CategoryModel.fromJson(e)).toList();
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}