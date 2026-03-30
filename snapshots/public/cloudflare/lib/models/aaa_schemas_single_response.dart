// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aaa_webhooks.dart';final class AaaSchemasSingleResponse {const AaaSchemasSingleResponse({this.result});

factory AaaSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AaaSchemasSingleResponse(
  result: json['result'] != null ? AaaWebhooks.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AaaWebhooks? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AaaSchemasSingleResponse copyWith({AaaWebhooks Function()? result}) { return AaaSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AaaSchemasSingleResponse(result: $result)'; } 
 }
