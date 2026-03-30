// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_ca.dart';final class AccessCaComponentsSchemasResponseCollection {const AccessCaComponentsSchemasResponseCollection({this.result});

factory AccessCaComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessCaComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessCa.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessCa>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCaComponentsSchemasResponseCollection copyWith({List<AccessCa> Function()? result}) { return AccessCaComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCaComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessCaComponentsSchemasResponseCollection(result: $result)'; } 
 }
