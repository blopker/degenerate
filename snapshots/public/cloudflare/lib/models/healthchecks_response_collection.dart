// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'healthchecks_healthchecks.dart';@immutable final class HealthchecksResponseCollection {const HealthchecksResponseCollection({this.result});

factory HealthchecksResponseCollection.fromJson(Map<String, dynamic> json) { return HealthchecksResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => HealthchecksHealthchecks.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<HealthchecksHealthchecks>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
HealthchecksResponseCollection copyWith({List<HealthchecksHealthchecks> Function()? result}) { return HealthchecksResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HealthchecksResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'HealthchecksResponseCollection(result: $result)'; } 
 }
