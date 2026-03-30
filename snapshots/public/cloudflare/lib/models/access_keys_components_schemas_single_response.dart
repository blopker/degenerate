// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_key_config.dart';final class AccessKeysComponentsSchemasSingleResponse {const AccessKeysComponentsSchemasSingleResponse({this.result});

factory AccessKeysComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessKeysComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessKeyConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessKeyConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessKeysComponentsSchemasSingleResponse copyWith({AccessKeyConfig Function()? result}) { return AccessKeysComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessKeysComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessKeysComponentsSchemasSingleResponse(result: $result)'; } 
 }
