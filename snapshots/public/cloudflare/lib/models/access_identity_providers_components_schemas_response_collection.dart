// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_identity_providers_components_schemas_response_collection_result.dart';final class AccessIdentityProvidersComponentsSchemasResponseCollection {const AccessIdentityProvidersComponentsSchemasResponseCollection({this.result});

factory AccessIdentityProvidersComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessIdentityProvidersComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessIdentityProvidersComponentsSchemasResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessIdentityProvidersComponentsSchemasResponseCollectionResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessIdentityProvidersComponentsSchemasResponseCollection copyWith({List<AccessIdentityProvidersComponentsSchemasResponseCollectionResult> Function()? result}) { return AccessIdentityProvidersComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessIdentityProvidersComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessIdentityProvidersComponentsSchemasResponseCollection(result: $result)'; } 
 }
