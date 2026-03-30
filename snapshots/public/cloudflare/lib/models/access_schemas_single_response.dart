// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_service_tokens.dart';final class AccessSchemasSingleResponse {const AccessSchemasSingleResponse({this.result});

factory AccessSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasSingleResponse(
  result: json['result'] != null ? AccessServiceTokens.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessServiceTokens? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessSchemasSingleResponse copyWith({AccessServiceTokens Function()? result}) { return AccessSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessSchemasSingleResponse(result: $result)'; } 
 }
