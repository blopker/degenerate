// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_certificates.dart';@immutable final class AccessGatewayCaComponentsSchemasSingleResponse {const AccessGatewayCaComponentsSchemasSingleResponse({this.result});

factory AccessGatewayCaComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessGatewayCaComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessSchemasCertificates.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessSchemasCertificates? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessGatewayCaComponentsSchemasSingleResponse copyWith({AccessSchemasCertificates Function()? result}) { return AccessGatewayCaComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGatewayCaComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessGatewayCaComponentsSchemasSingleResponse(result: $result)'; } 
 }
