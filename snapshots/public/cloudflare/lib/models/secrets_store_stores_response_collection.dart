// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secrets_store_store_object.dart';final class SecretsStoreStoresResponseCollection {const SecretsStoreStoresResponseCollection({this.result});

factory SecretsStoreStoresResponseCollection.fromJson(Map<String, dynamic> json) { return SecretsStoreStoresResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => SecretsStoreStoreObject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SecretsStoreStoreObject>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecretsStoreStoresResponseCollection copyWith({List<SecretsStoreStoreObject> Function()? result}) { return SecretsStoreStoresResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStoreStoresResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'SecretsStoreStoresResponseCollection(result: $result)'; } 
 }
