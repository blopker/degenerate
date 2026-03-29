// GENERATED CODE - DO NOT MODIFY BY HAND

final class FunctionObject {const FunctionObject({this.description, required this.name, this.parameters, this.strict, });

factory FunctionObject.fromJson(Map<String, dynamic> json) { return FunctionObject(
  description: json['description'] as String?,
  name: json['name'] as String,
  parameters: (json['parameters'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  strict: json['strict'] as bool?,
); }

/// A description of what the function does, used by the model to choose when and how to call the function.
final String? description;

/// The name of the function to be called. Must be a-z, A-Z, 0-9, or contain underscores and dashes, with a maximum length of 64.
final String name;

final Map<String,dynamic>? parameters;

/// Whether to enable strict schema adherence when generating the function call. If set to true, the model will follow the exact schema defined in the `parameters` field. Only a subset of JSON Schema is supported when `strict` is `true`. Learn more about Structured Outputs in the [function calling guide](/docs/guides/function-calling).
final bool? strict;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'name': name,
  'parameters': ?parameters,
  'strict': ?strict,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
FunctionObject copyWith({String Function()? description, String? name, Map<String, dynamic> Function()? parameters, bool? Function()? strict, }) { return FunctionObject(
  description: description != null ? description() : this.description,
  name: name ?? this.name,
  parameters: parameters != null ? parameters() : this.parameters,
  strict: strict != null ? strict() : this.strict,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FunctionObject &&
          description == other.description &&
          name == other.name &&
          parameters == other.parameters &&
          strict == other.strict; } 
@override int get hashCode { return Object.hash(description, name, parameters, strict); } 
@override String toString() { return 'FunctionObject(description: $description, name: $name, parameters: $parameters, strict: $strict)'; } 
 }
