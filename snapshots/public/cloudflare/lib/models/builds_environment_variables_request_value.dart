// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'builds_is_secret.dart';@immutable final class BuildsEnvironmentVariablesRequestValue {const BuildsEnvironmentVariablesRequestValue({required this.isSecret, this.value = const Omittable.absent(), });

factory BuildsEnvironmentVariablesRequestValue.fromJson(Map<String, dynamic> json) { return BuildsEnvironmentVariablesRequestValue(
  isSecret: BuildsIsSecret.fromJson(json['is_secret'] as bool),
  value: json.containsKey('value') ? Omittable(json['value'] as String?) : const Omittable.absent(),
); }

final BuildsIsSecret isSecret;

final Omittable<String?> value;

Map<String, dynamic> toJson() { return {
  'is_secret': isSecret.toJson(),
  if (value.isPresent) 'value': value.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('is_secret'); } 
BuildsEnvironmentVariablesRequestValue copyWith({BuildsIsSecret? isSecret, Omittable<String?>? value, }) { return BuildsEnvironmentVariablesRequestValue(
  isSecret: isSecret ?? this.isSecret,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsEnvironmentVariablesRequestValue &&
          isSecret == other.isSecret &&
          value == other.value; } 
@override int get hashCode { return Object.hash(isSecret, value); } 
@override String toString() { return 'BuildsEnvironmentVariablesRequestValue(isSecret: $isSecret, value: $value)'; } 
 }
