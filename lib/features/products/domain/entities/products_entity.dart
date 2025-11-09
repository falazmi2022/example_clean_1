import 'package:equatable/equatable.dart';

class ProductsEntity extends Equatable {
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;

  const ProductsEntity({
    required this.category,
    required this.description,
    required this.image,
    required this.price,
    required this.title,
  });

  @override
  List<Object?> get props => [category, description, image, price, title];
}
