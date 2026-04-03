// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_operation_feature_parameter_schemas_parameter_schemas.dart';@immutable final class ShieldOperationFeatureParameterSchemas {const ShieldOperationFeatureParameterSchemas({required this.parameterSchemas});

factory ShieldOperationFeatureParameterSchemas.fromJson(Map<String, dynamic> json) { return ShieldOperationFeatureParameterSchemas(
  parameterSchemas: ShieldOperationFeatureParameterSchemasParameterSchemas.fromJson(json['parameter_schemas'] as Map<String, dynamic>),
); }

final ShieldOperationFeatureParameterSchemasParameterSchemas parameterSchemas;

Map<String, dynamic> toJson() { return {
  'parameter_schemas': parameterSchemas.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('parameter_schemas'); } 
ShieldOperationFeatureParameterSchemas copyWith({ShieldOperationFeatureParameterSchemasParameterSchemas? parameterSchemas}) { return ShieldOperationFeatureParameterSchemas(
  parameterSchemas: parameterSchemas ?? this.parameterSchemas,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOperationFeatureParameterSchemas &&
          parameterSchemas == other.parameterSchemas; } 
@override int get hashCode { return parameterSchemas.hashCode; } 
@override String toString() { return 'ShieldOperationFeatureParameterSchemas(parameterSchemas: $parameterSchemas)'; } 
 }
