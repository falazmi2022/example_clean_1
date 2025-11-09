// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'add_task_model.dart';

class AddTaskModelMapper extends ClassMapperBase<AddTaskModel> {
  AddTaskModelMapper._();

  static AddTaskModelMapper? _instance;
  static AddTaskModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AddTaskModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AddTaskModel';

  static int _$id(AddTaskModel v) => v.id;
  static const Field<AddTaskModel, int> _f$id = Field('id', _$id);
  static String _$title(AddTaskModel v) => v.title;
  static const Field<AddTaskModel, String> _f$title = Field('title', _$title);
  static String _$describe(AddTaskModel v) => v.describe;
  static const Field<AddTaskModel, String> _f$describe = Field(
    'describe',
    _$describe,
  );
  static bool _$isCompleted(AddTaskModel v) => v.isCompleted;
  static const Field<AddTaskModel, bool> _f$isCompleted = Field(
    'isCompleted',
    _$isCompleted,
  );
  static String _$createdAt(AddTaskModel v) => v.createdAt;
  static const Field<AddTaskModel, String> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
  );

  @override
  final MappableFields<AddTaskModel> fields = const {
    #id: _f$id,
    #title: _f$title,
    #describe: _f$describe,
    #isCompleted: _f$isCompleted,
    #createdAt: _f$createdAt,
  };

  static AddTaskModel _instantiate(DecodingData data) {
    return AddTaskModel(
      id: data.dec(_f$id),
      title: data.dec(_f$title),
      describe: data.dec(_f$describe),
      isCompleted: data.dec(_f$isCompleted),
      createdAt: data.dec(_f$createdAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AddTaskModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AddTaskModel>(map);
  }

  static AddTaskModel fromJson(String json) {
    return ensureInitialized().decodeJson<AddTaskModel>(json);
  }
}

mixin AddTaskModelMappable {
  String toJson() {
    return AddTaskModelMapper.ensureInitialized().encodeJson<AddTaskModel>(
      this as AddTaskModel,
    );
  }

  Map<String, dynamic> toMap() {
    return AddTaskModelMapper.ensureInitialized().encodeMap<AddTaskModel>(
      this as AddTaskModel,
    );
  }

  AddTaskModelCopyWith<AddTaskModel, AddTaskModel, AddTaskModel> get copyWith =>
      _AddTaskModelCopyWithImpl<AddTaskModel, AddTaskModel>(
        this as AddTaskModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AddTaskModelMapper.ensureInitialized().stringifyValue(
      this as AddTaskModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return AddTaskModelMapper.ensureInitialized().equalsValue(
      this as AddTaskModel,
      other,
    );
  }

  @override
  int get hashCode {
    return AddTaskModelMapper.ensureInitialized().hashValue(
      this as AddTaskModel,
    );
  }
}

extension AddTaskModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AddTaskModel, $Out> {
  AddTaskModelCopyWith<$R, AddTaskModel, $Out> get $asAddTaskModel =>
      $base.as((v, t, t2) => _AddTaskModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AddTaskModelCopyWith<$R, $In extends AddTaskModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? title,
    String? describe,
    bool? isCompleted,
    String? createdAt,
  });
  AddTaskModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AddTaskModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AddTaskModel, $Out>
    implements AddTaskModelCopyWith<$R, AddTaskModel, $Out> {
  _AddTaskModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AddTaskModel> $mapper =
      AddTaskModelMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? title,
    String? describe,
    bool? isCompleted,
    String? createdAt,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (title != null) #title: title,
      if (describe != null) #describe: describe,
      if (isCompleted != null) #isCompleted: isCompleted,
      if (createdAt != null) #createdAt: createdAt,
    }),
  );
  @override
  AddTaskModel $make(CopyWithData data) => AddTaskModel(
    id: data.get(#id, or: $value.id),
    title: data.get(#title, or: $value.title),
    describe: data.get(#describe, or: $value.describe),
    isCompleted: data.get(#isCompleted, or: $value.isCompleted),
    createdAt: data.get(#createdAt, or: $value.createdAt),
  );

  @override
  AddTaskModelCopyWith<$R2, AddTaskModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AddTaskModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

