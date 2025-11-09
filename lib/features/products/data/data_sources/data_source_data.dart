import 'package:dio/dio.dart';
import 'package:to_do_clean_ar/features/products/data/models/product_model.dart';

abstract class DataSourceData {
  Future<List<ProductModel>> getProducts();
}

class ApiDataSource implements DataSourceData {
  final Dio dio;

  ApiDataSource({required this.dio});
  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      final getProduct = await dio.get('https://fakestoreapi.com/products');
      final dataModel = (getProduct.data as List)
          .map((product) => ProductModelMapper.fromMap(product))
          .toList();
      return dataModel;
    } catch (error) {
      throw Exception("There is error");
    }
  }
}

class LocalData implements DataSourceData {
  LocalData();
  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      return [];
    } catch (error) {
      throw Exception("There is error");
    }
  }
}
