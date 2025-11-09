// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product_model.dart';

class ProductModelMapper extends ClassMapperBase<ProductModel> {
  ProductModelMapper._();

  static ProductModelMapper? _instance;
  static ProductModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProductModel';

  static String _$category(ProductModel v) => v.category;
  static const Field<ProductModel, String> _f$category = Field(
    'category',
    _$category,
  );
  static String _$description(ProductModel v) => v.description;
  static const Field<ProductModel, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$image(ProductModel v) => v.image;
  static const Field<ProductModel, String> _f$image = Field('image', _$image);
  static num _$price(ProductModel v) => v.price;
  static const Field<ProductModel, num> _f$price = Field('price', _$price);
  static String _$title(ProductModel v) => v.title;
  static const Field<ProductModel, String> _f$title = Field('title', _$title);

  @override
  final MappableFields<ProductModel> fields = const {
    #category: _f$category,
    #description: _f$description,
    #image: _f$image,
    #price: _f$price,
    #title: _f$title,
  };

  static ProductModel _instantiate(DecodingData data) {
    return ProductModel(
      category: data.dec(_f$category),
      description: data.dec(_f$description),
      image: data.dec(_f$image),
      price: data.dec(_f$price),
      title: data.dec(_f$title),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProductModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProductModel>(map);
  }

  static ProductModel fromJson(String json) {
    return ensureInitialized().decodeJson<ProductModel>(json);
  }
}

mixin ProductModelMappable {
  String toJson() {
    return ProductModelMapper.ensureInitialized().encodeJson<ProductModel>(
      this as ProductModel,
    );
  }

  Map<String, dynamic> toMap() {
    return ProductModelMapper.ensureInitialized().encodeMap<ProductModel>(
      this as ProductModel,
    );
  }

  ProductModelCopyWith<ProductModel, ProductModel, ProductModel> get copyWith =>
      _ProductModelCopyWithImpl<ProductModel, ProductModel>(
        this as ProductModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProductModelMapper.ensureInitialized().stringifyValue(
      this as ProductModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProductModelMapper.ensureInitialized().equalsValue(
      this as ProductModel,
      other,
    );
  }

  @override
  int get hashCode {
    return ProductModelMapper.ensureInitialized().hashValue(
      this as ProductModel,
    );
  }
}

extension ProductModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProductModel, $Out> {
  ProductModelCopyWith<$R, ProductModel, $Out> get $asProductModel =>
      $base.as((v, t, t2) => _ProductModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProductModelCopyWith<$R, $In extends ProductModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? category,
    String? description,
    String? image,
    num? price,
    String? title,
  });
  ProductModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProductModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProductModel, $Out>
    implements ProductModelCopyWith<$R, ProductModel, $Out> {
  _ProductModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProductModel> $mapper =
      ProductModelMapper.ensureInitialized();
  @override
  $R call({
    String? category,
    String? description,
    String? image,
    num? price,
    String? title,
  }) => $apply(
    FieldCopyWithData({
      if (category != null) #category: category,
      if (description != null) #description: description,
      if (image != null) #image: image,
      if (price != null) #price: price,
      if (title != null) #title: title,
    }),
  );
  @override
  ProductModel $make(CopyWithData data) => ProductModel(
    category: data.get(#category, or: $value.category),
    description: data.get(#description, or: $value.description),
    image: data.get(#image, or: $value.image),
    price: data.get(#price, or: $value.price),
    title: data.get(#title, or: $value.title),
  );

  @override
  ProductModelCopyWith<$R2, ProductModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProductModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

