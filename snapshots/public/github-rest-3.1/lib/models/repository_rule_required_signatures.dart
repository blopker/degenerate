// GENERATED CODE - DO NOT MODIFY BY HAND

final class RepositoryRuleRequiredSignaturesType {const RepositoryRuleRequiredSignaturesType._(this.value);

factory RepositoryRuleRequiredSignaturesType.fromJson(String json) { return switch (json) {
  'required_signatures' => requiredSignatures,
  _ => RepositoryRuleRequiredSignaturesType._(json),
}; }

static const RepositoryRuleRequiredSignaturesType requiredSignatures = RepositoryRuleRequiredSignaturesType._('required_signatures');

static const List<RepositoryRuleRequiredSignaturesType> values = [requiredSignatures];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleRequiredSignaturesType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleRequiredSignaturesType($value)'; } 
 }
/// Commits pushed to matching refs must have verified signatures.
final class RepositoryRuleRequiredSignatures {const RepositoryRuleRequiredSignatures({required this.type});

factory RepositoryRuleRequiredSignatures.fromJson(Map<String, dynamic> json) { return RepositoryRuleRequiredSignatures(
  type: RepositoryRuleRequiredSignaturesType.fromJson(json['type'] as String),
); }

final RepositoryRuleRequiredSignaturesType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RepositoryRuleRequiredSignatures copyWith({RepositoryRuleRequiredSignaturesType? type}) { return RepositoryRuleRequiredSignatures(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleRequiredSignatures &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'RepositoryRuleRequiredSignatures(type: $type)'; } 
 }
