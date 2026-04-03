// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_healthchecks.dart';@immutable final class SmartshieldResponseCollection {const SmartshieldResponseCollection({this.result});

factory SmartshieldResponseCollection.fromJson(Map<String, dynamic> json) { return SmartshieldResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => SmartshieldHealthchecks.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SmartshieldHealthchecks>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SmartshieldResponseCollection copyWith({List<SmartshieldHealthchecks> Function()? result}) { return SmartshieldResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'SmartshieldResponseCollection(result: $result)'; } 
 }
