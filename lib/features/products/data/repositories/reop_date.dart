import 'package:to_do_clean_ar/features/products/data/data_sources/data_source_data.dart';
import 'package:to_do_clean_ar/features/products/domain/entities/products_entity.dart';
import 'package:to_do_clean_ar/features/products/domain/repositories/repo_products_domain.dart';

class ApiRepoDate implements RepoProductsDomain {
  final DataSourceData apiSourceData;

  ApiRepoDate({required this.apiSourceData});

  @override
  Future<List<ProductsEntity>> getProducts() {
    return apiSourceData.getProducts();
  }
}
