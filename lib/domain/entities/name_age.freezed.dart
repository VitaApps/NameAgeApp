// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_age.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NameAge _$NameAgeFromJson(Map<String, dynamic> json) {
  return _NameAge.fromJson(json);
}

/// @nodoc
mixin _$NameAge {
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameAgeCopyWith<NameAge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameAgeCopyWith<$Res> {
  factory $NameAgeCopyWith(NameAge value, $Res Function(NameAge) then) =
      _$NameAgeCopyWithImpl<$Res, NameAge>;
  @useResult
  $Res call({String name, int count, int? age});
}

/// @nodoc
class _$NameAgeCopyWithImpl<$Res, $Val extends NameAge>
    implements $NameAgeCopyWith<$Res> {
  _$NameAgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NameAgeCopyWith<$Res> implements $NameAgeCopyWith<$Res> {
  factory _$$_NameAgeCopyWith(
          _$_NameAge value, $Res Function(_$_NameAge) then) =
      __$$_NameAgeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int count, int? age});
}

/// @nodoc
class __$$_NameAgeCopyWithImpl<$Res>
    extends _$NameAgeCopyWithImpl<$Res, _$_NameAge>
    implements _$$_NameAgeCopyWith<$Res> {
  __$$_NameAgeCopyWithImpl(_$_NameAge _value, $Res Function(_$_NameAge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? age = freezed,
  }) {
    return _then(_$_NameAge(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NameAge with DiagnosticableTreeMixin implements _NameAge {
  const _$_NameAge(
      {required this.name, required this.count, required this.age});

  factory _$_NameAge.fromJson(Map<String, dynamic> json) =>
      _$$_NameAgeFromJson(json);

  @override
  final String name;
  @override
  final int count;
  @override
  final int? age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NameAge(name: $name, count: $count, age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NameAge'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameAge &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, count, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameAgeCopyWith<_$_NameAge> get copyWith =>
      __$$_NameAgeCopyWithImpl<_$_NameAge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameAgeToJson(
      this,
    );
  }
}

abstract class _NameAge implements NameAge {
  const factory _NameAge(
      {required final String name,
      required final int count,
      required final int? age}) = _$_NameAge;

  factory _NameAge.fromJson(Map<String, dynamic> json) = _$_NameAge.fromJson;

  @override
  String get name;
  @override
  int get count;
  @override
  int? get age;
  @override
  @JsonKey(ignore: true)
  _$$_NameAgeCopyWith<_$_NameAge> get copyWith =>
      throw _privateConstructorUsedError;
}
