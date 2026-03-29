// GENERATED CODE - DO NOT MODIFY BY HAND

import 'repository_rule_file_path_restriction_parameters.dart';final class RepositoryRuleFilePathRestrictionType {const RepositoryRuleFilePathRestrictionType._(this.value);

factory RepositoryRuleFilePathRestrictionType.fromJson(String json) { return switch (json) {
  'file_path_restriction' => filePathRestriction,
  _ => RepositoryRuleFilePathRestrictionType._(json),
}; }

static const RepositoryRuleFilePathRestrictionType filePathRestriction = RepositoryRuleFilePathRestrictionType._('file_path_restriction');

static const List<RepositoryRuleFilePathRestrictionType> values = [filePathRestriction];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleFilePathRestrictionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleFilePathRestrictionType($value)'; } 
 }
/// Prevent commits that include changes in specified file and folder paths from being pushed to the commit graph. This includes absolute paths that contain file names.
final class RepositoryRuleFilePathRestriction {const RepositoryRuleFilePathRestriction({required this.type, this.parameters, });

factory RepositoryRuleFilePathRestriction.fromJson(Map<String, dynamic> json) { return RepositoryRuleFilePathRestriction(
  type: RepositoryRuleFilePathRestrictionType.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRuleFilePathRestrictionParameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
); }

final RepositoryRuleFilePathRestrictionType type;

final RepositoryRuleFilePathRestrictionParameters? parameters;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (parameters != null) 'parameters': parameters?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RepositoryRuleFilePathRestriction copyWith({RepositoryRuleFilePathRestrictionType? type, RepositoryRuleFilePathRestrictionParameters Function()? parameters, }) { return RepositoryRuleFilePathRestriction(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleFilePathRestriction &&
          type == other.type &&
          parameters == other.parameters; } 
@override int get hashCode { return Object.hash(type, parameters); } 
@override String toString() { return 'RepositoryRuleFilePathRestriction(type: $type, parameters: $parameters)'; } 
 }
