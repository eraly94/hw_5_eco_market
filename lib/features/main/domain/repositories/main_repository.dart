import 'package:hw_5_eco_market/features/main/domain/entities/category_entity.dart';

abstract class MainRepoistory {
  Future<List<CategoryEntity>> getCategory();
}