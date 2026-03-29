// GENERATED CODE - DO NOT MODIFY BY HAND

import 'repository_rule_max_file_size_parameters.dart';final class RepositoryRuleMaxFileSizeType {const RepositoryRuleMaxFileSizeType._(this.value);

factory RepositoryRuleMaxFileSizeType.fromJson(String json) { return switch (json) {
  'max_file_size' => maxFileSize,
  _ => RepositoryRuleMaxFileSizeType._(json),
}; }

static const RepositoryRuleMaxFileSizeType maxFileSize = RepositoryRuleMaxFileSizeType._('max_file_size');

static const List<RepositoryRuleMaxFileSizeType> values = [maxFileSize];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleMaxFileSizeType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleMaxFileSizeType($value)'; } 
 }
/// Prevent commits with individual files that exceed the specified limit from being pushed to the commit graph.
final class RepositoryRuleMaxFileSize {const RepositoryRuleMaxFileSize({required this.type, this.parameters, });

factory RepositoryRuleMaxFileSize.fromJson(Map<String, dynamic> json) { return RepositoryRuleMaxFileSize(
  type: RepositoryRuleMaxFileSizeType.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRuleMaxFileSizeParameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
); }

final RepositoryRuleMaxFileSizeType type;

final RepositoryRuleMaxFileSizeParameters? parameters;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (parameters != null) 'parameters': parameters?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RepositoryRuleMaxFileSize copyWith({RepositoryRuleMaxFileSizeType? type, RepositoryRuleMaxFileSizeParameters Function()? parameters, }) { return RepositoryRuleMaxFileSize(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleMaxFileSize &&
          type == other.type &&
          parameters == other.parameters; } 
@override int get hashCode { return Object.hash(type, parameters); } 
@override String toString() { return 'RepositoryRuleMaxFileSize(type: $type, parameters: $parameters)'; } 
 }
