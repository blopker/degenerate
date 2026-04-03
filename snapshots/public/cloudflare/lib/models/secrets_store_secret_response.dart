// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secrets_store_secret_object.dart';@immutable final class SecretsStoreSecretResponse {const SecretsStoreSecretResponse({this.result});

factory SecretsStoreSecretResponse.fromJson(Map<String, dynamic> json) { return SecretsStoreSecretResponse(
  result: json['result'] != null ? SecretsStoreSecretObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecretsStoreSecretObject? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecretsStoreSecretResponse copyWith({SecretsStoreSecretObject Function()? result}) { return SecretsStoreSecretResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStoreSecretResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecretsStoreSecretResponse(result: $result)'; } 
 }
