// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_pacfiles_components_schemas_response_collection_result.dart';@immutable final class ZeroTrustGatewayPacfilesComponentsSchemasResponseCollection {const ZeroTrustGatewayPacfilesComponentsSchemasResponseCollection({this.result});

factory ZeroTrustGatewayPacfilesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayPacfilesComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayPacfilesComponentsSchemasResponseCollection copyWith({List<ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult> Function()? result}) { return ZeroTrustGatewayPacfilesComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayPacfilesComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ZeroTrustGatewayPacfilesComponentsSchemasResponseCollection(result: $result)'; } 
 }
