// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_ca.dart';final class AccessCaComponentsSchemasSingleResponse {const AccessCaComponentsSchemasSingleResponse({this.result});

factory AccessCaComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessCaComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessCa.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessCa? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCaComponentsSchemasSingleResponse copyWith({AccessCa Function()? result}) { return AccessCaComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCaComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessCaComponentsSchemasSingleResponse(result: $result)'; } 
 }
