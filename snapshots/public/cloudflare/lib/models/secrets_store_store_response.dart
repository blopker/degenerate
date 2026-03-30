// GENERATED CODE - DO NOT MODIFY BY HAND

import 'secrets_store_store_object.dart';final class SecretsStoreStoreResponse {const SecretsStoreStoreResponse({this.result});

factory SecretsStoreStoreResponse.fromJson(Map<String, dynamic> json) { return SecretsStoreStoreResponse(
  result: json['result'] != null ? SecretsStoreStoreObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecretsStoreStoreObject? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecretsStoreStoreResponse copyWith({SecretsStoreStoreObject Function()? result}) { return SecretsStoreStoreResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStoreStoreResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecretsStoreStoreResponse(result: $result)'; } 
 }
