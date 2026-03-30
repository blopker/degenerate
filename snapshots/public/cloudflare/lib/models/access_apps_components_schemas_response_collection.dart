// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_response.dart';final class AccessAppsComponentsSchemasResponseCollection {const AccessAppsComponentsSchemasResponseCollection({this.result});

factory AccessAppsComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessAppsComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessAppResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessAppResponse>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessAppsComponentsSchemasResponseCollection copyWith({List<AccessAppResponse> Function()? result}) { return AccessAppsComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppsComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessAppsComponentsSchemasResponseCollection(result: $result)'; } 
 }
