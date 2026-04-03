// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_service_tokens.dart';@immutable final class AccessServiceTokensComponentsSchemasSingleResponse {const AccessServiceTokensComponentsSchemasSingleResponse({this.result});

factory AccessServiceTokensComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessServiceTokensComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessSchemasServiceTokens.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessSchemasServiceTokens? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessServiceTokensComponentsSchemasSingleResponse copyWith({AccessSchemasServiceTokens Function()? result}) { return AccessServiceTokensComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessServiceTokensComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessServiceTokensComponentsSchemasSingleResponse(result: $result)'; } 
 }
