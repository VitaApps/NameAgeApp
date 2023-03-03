import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'name_age.freezed.dart';
part 'name_age.g.dart';

@freezed
class NameAge with _$NameAge {
  const factory NameAge({
    required String name,
    required int count,
    required int? age,
  }) = _NameAge;

  factory NameAge.fromJson(Map<String, dynamic> json) => _$NameAgeFromJson(json);
}
