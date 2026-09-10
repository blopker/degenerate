// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'input_file_content.dart';import 'input_image_content.dart';import 'input_text_content.dart';import 'response_prompt_variables_value.dart';/// Reference to a prompt template and its variables.
/// [Learn more](/docs/guides/text?api-mode=responses#reusable-prompts).
/// 
@immutable final class Prompt {const Prompt({required this.id, this.version = const Omittable.absent(), this.variables = const Omittable.absent(), });

factory Prompt.fromJson(Map<String, dynamic> json) { return Prompt(
  id: json['id'] as String,
  version: json.containsKey('version') ? Omittable(json['version'] as String?) : const Omittable.absent(),
  variables: json.containsKey('variables') ? Omittable((json['variables'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, OneOf4.parse(v, fromA: (v) => v as String, fromB: (v) => InputTextContent.fromJson(v as Map<String, dynamic>), fromC: (v) => InputImageContent.fromJson(v as Map<String, dynamic>), fromD: (v) => InputFileContent.fromJson(v as Map<String, dynamic>),)))) : const Omittable.absent(),
); }

/// The unique identifier of the prompt template to use.
final String id;

/// Optional version of the prompt template.
final Omittable<String?> version;

final Omittable<Map<String,ResponsePromptVariablesValue>?> variables;

Map<String, dynamic> toJson() { return {
  'id': id,
  if (version.isPresent) 'version': version.value,
  if (variables.isPresent) 'variables': variables.value?.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
Prompt copyWith({String? id, Omittable<String?>? version, Omittable<Map<String,ResponsePromptVariablesValue>?>? variables, }) { return Prompt(
  id: id ?? this.id,
  version: version ?? this.version,
  variables: variables ?? this.variables,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt &&
          id == other.id &&
          version == other.version &&
          variables == other.variables; } 
@override int get hashCode { return Object.hash(id, version, variables); } 
@override String toString() { return 'Prompt(id: $id, version: $version, variables: $variables)'; } 
 }
