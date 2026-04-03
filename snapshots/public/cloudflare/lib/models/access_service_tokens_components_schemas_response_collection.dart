// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_service_tokens.dart';@immutable final class AccessServiceTokensComponentsSchemasResponseCollection {const AccessServiceTokensComponentsSchemasResponseCollection({this.result});

factory AccessServiceTokensComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessServiceTokensComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasServiceTokens.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessSchemasServiceTokens>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessServiceTokensComponentsSchemasResponseCollection copyWith({List<AccessSchemasServiceTokens> Function()? result}) { return AccessServiceTokensComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessServiceTokensComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessServiceTokensComponentsSchemasResponseCollection(result: $result)'; } 
 }
