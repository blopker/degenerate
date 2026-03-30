// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_old_public_schema.dart';final class ShieldSchemaValidationRetrieveInformationAboutAllSchemasResponse {const ShieldSchemaValidationRetrieveInformationAboutAllSchemasResponse({required this.result});

factory ShieldSchemaValidationRetrieveInformationAboutAllSchemasResponse.fromJson(Map<String, dynamic> json) { return ShieldSchemaValidationRetrieveInformationAboutAllSchemasResponse(
  result: (json['result'] as List<dynamic>).map((e) => ShieldOldPublicSchema.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ShieldOldPublicSchema> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
ShieldSchemaValidationRetrieveInformationAboutAllSchemasResponse copyWith({List<ShieldOldPublicSchema>? result}) { return ShieldSchemaValidationRetrieveInformationAboutAllSchemasResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSchemaValidationRetrieveInformationAboutAllSchemasResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'ShieldSchemaValidationRetrieveInformationAboutAllSchemasResponse(result: $result)'; } 
 }
