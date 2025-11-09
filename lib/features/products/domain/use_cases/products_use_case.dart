import 'package:to_do_clean_ar/features/products/domain/entities/products_entity.dart';
import 'package:to_do_clean_ar/features/products/domain/repositories/repo_products_domain.dart';

class ProductsUseCase {
  final RepoProductsDomain repoData;

  ProductsUseCase({required this.repoData});

  Future<List<ProductsEntity>> getProduct() async {
    return await repoData.getProducts();
  }
}
