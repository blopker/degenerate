// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secrets_store_secrets_usage_object.dart';@immutable final class SecretsStoreQuotaResponse {const SecretsStoreQuotaResponse({this.result});

factory SecretsStoreQuotaResponse.fromJson(Map<String, dynamic> json) { return SecretsStoreQuotaResponse(
  result: json['result'] != null ? SecretsStoreSecretsUsageObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecretsStoreSecretsUsageObject? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecretsStoreQuotaResponse copyWith({SecretsStoreSecretsUsageObject Function()? result}) { return SecretsStoreQuotaResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStoreQuotaResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecretsStoreQuotaResponse(result: $result)'; } 
 }
