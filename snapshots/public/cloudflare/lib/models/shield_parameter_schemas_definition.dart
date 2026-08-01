// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// An operation schema object containing a response.
@immutable final class ShieldParameterSchemasDefinition {const ShieldParameterSchemasDefinition({this.parameters, this.responses = const Omittable.absent(), });

factory ShieldParameterSchemasDefinition.fromJson(Map<String, dynamic> json) { return ShieldParameterSchemasDefinition(
  parameters: (json['parameters'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList(),
  responses: json.containsKey('responses') ? Omittable(json['responses'] as Map<String, dynamic>?) : const Omittable.absent(),
); }

/// An array containing the learned parameter schemas.
final List<Map<String,dynamic>>? parameters;

/// An empty response object. This field is required to yield a valid operation schema.
final Omittable<Map<String,dynamic>?> responses;

Map<String, dynamic> toJson() { return {
  if (parameters != null) 'parameters': parameters?.map((e) => e).toList(),
  if (responses.isPresent) 'responses': responses.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'parameters', 'responses'}.contains(key)); } 
ShieldParameterSchemasDefinition copyWith({List<Map<String, dynamic>>? Function()? parameters, Omittable<Map<String,dynamic>?>? responses, }) { return ShieldParameterSchemasDefinition(
  parameters: parameters != null ? parameters() : this.parameters,
  responses: responses ?? this.responses,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldParameterSchemasDefinition &&
          listEquals(parameters, other.parameters) &&
          responses == other.responses; } 
@override int get hashCode { return Object.hash(Object.hashAll(parameters ?? const []), responses); } 
@override String toString() { return 'ShieldParameterSchemasDefinition(parameters: $parameters, responses: $responses)'; } 
 }
