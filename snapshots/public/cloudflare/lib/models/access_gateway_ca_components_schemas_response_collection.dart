// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_certificates.dart';@immutable final class AccessGatewayCaComponentsSchemasResponseCollection {const AccessGatewayCaComponentsSchemasResponseCollection({this.result});

factory AccessGatewayCaComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessGatewayCaComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasCertificates.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessSchemasCertificates>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessGatewayCaComponentsSchemasResponseCollection copyWith({List<AccessSchemasCertificates> Function()? result}) { return AccessGatewayCaComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGatewayCaComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessGatewayCaComponentsSchemasResponseCollection(result: $result)'; } 
 }
