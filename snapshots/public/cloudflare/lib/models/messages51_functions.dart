// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages51Functions {const Messages51Functions({required this.name, this.description, this.parameters, this.strict, });

factory Messages51Functions.fromJson(Map<String, dynamic> json) { return Messages51Functions(
  description: json['description'] as String?,
  name: json['name'] as String,
  parameters: (json['parameters'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  strict: json['strict'] as bool?,
); }

/// A description of what the function does.
final String? description;

/// The name of the function to be called.
final String name;

/// The parameters the function accepts, described as a JSON Schema object.
final Map<String,dynamic>? parameters;

final bool? strict;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'name': name,
  'parameters': ?parameters,
  'strict': ?strict,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
Messages51Functions copyWith({String Function()? description, String? name, Map<String, dynamic> Function()? parameters, bool? Function()? strict, }) { return Messages51Functions(
  description: description != null ? description() : this.description,
  name: name ?? this.name,
  parameters: parameters != null ? parameters() : this.parameters,
  strict: strict != null ? strict() : this.strict,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51Functions &&
          description == other.description &&
          name == other.name &&
          parameters == other.parameters &&
          strict == other.strict; } 
@override int get hashCode { return Object.hash(description, name, parameters, strict); } 
@override String toString() { return 'Messages51Functions(description: $description, name: $name, parameters: $parameters, strict: $strict)'; } 
 }
