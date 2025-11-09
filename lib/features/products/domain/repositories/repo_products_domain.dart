import 'package:to_do_clean_ar/features/products/domain/entities/products_entity.dart';

abstract class RepoProductsDomain {
  Future<List<ProductsEntity>> getProducts();
}
