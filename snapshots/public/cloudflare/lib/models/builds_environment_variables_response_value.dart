// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'builds_created_on.dart';import 'builds_is_secret.dart';@immutable final class BuildsEnvironmentVariablesResponseValue {const BuildsEnvironmentVariablesResponseValue({required this.createdOn, required this.isSecret, this.value = const Omittable.absent(), });

factory BuildsEnvironmentVariablesResponseValue.fromJson(Map<String, dynamic> json) { return BuildsEnvironmentVariablesResponseValue(
  createdOn: BuildsCreatedOn.fromJson(json['created_on'] as String),
  isSecret: BuildsIsSecret.fromJson(json['is_secret'] as bool),
  value: json.containsKey('value') ? Omittable(json['value'] as String?) : const Omittable.absent(),
); }

final BuildsCreatedOn createdOn;

final BuildsIsSecret isSecret;

/// Value is null for secret environment variables
final Omittable<String?> value;

Map<String, dynamic> toJson() { return {
  'created_on': createdOn.toJson(),
  'is_secret': isSecret.toJson(),
  if (value.isPresent) 'value': value.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_on') &&
      json.containsKey('is_secret'); } 
BuildsEnvironmentVariablesResponseValue copyWith({BuildsCreatedOn? createdOn, BuildsIsSecret? isSecret, Omittable<String?>? value, }) { return BuildsEnvironmentVariablesResponseValue(
  createdOn: createdOn ?? this.createdOn,
  isSecret: isSecret ?? this.isSecret,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsEnvironmentVariablesResponseValue &&
          createdOn == other.createdOn &&
          isSecret == other.isSecret &&
          value == other.value; } 
@override int get hashCode { return Object.hash(createdOn, isSecret, value); } 
@override String toString() { return 'BuildsEnvironmentVariablesResponseValue(createdOn: $createdOn, isSecret: $isSecret, value: $value)'; } 
 }
