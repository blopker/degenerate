// GENERATED CODE - DO NOT MODIFY BY HAND

/// Visibility of a variable
final class OrganizationActionsVariableVisibility {const OrganizationActionsVariableVisibility._(this.value);

factory OrganizationActionsVariableVisibility.fromJson(String json) { return switch (json) {
  'all' => all,
  'private' => private,
  'selected' => selected,
  _ => OrganizationActionsVariableVisibility._(json),
}; }

static const OrganizationActionsVariableVisibility all = OrganizationActionsVariableVisibility._('all');

static const OrganizationActionsVariableVisibility private = OrganizationActionsVariableVisibility._('private');

static const OrganizationActionsVariableVisibility selected = OrganizationActionsVariableVisibility._('selected');

static const List<OrganizationActionsVariableVisibility> values = [all, private, selected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrganizationActionsVariableVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrganizationActionsVariableVisibility($value)'; } 
 }
/// Organization variable for GitHub Actions.
final class OrganizationActionsVariable {const OrganizationActionsVariable({required this.name, required this.value, required this.createdAt, required this.updatedAt, required this.visibility, this.selectedRepositoriesUrl, });

factory OrganizationActionsVariable.fromJson(Map<String, dynamic> json) { return OrganizationActionsVariable(
  name: json['name'] as String,
  value: json['value'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  visibility: OrganizationActionsVariableVisibility.fromJson(json['visibility'] as String),
  selectedRepositoriesUrl: json['selected_repositories_url'] != null ? Uri.parse(json['selected_repositories_url'] as String) : null,
); }

/// The name of the variable.
final String name;

/// The value of the variable.
final String value;

/// The date and time at which the variable was created, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
final DateTime createdAt;

/// The date and time at which the variable was last updated, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
final DateTime updatedAt;

/// Visibility of a variable
final OrganizationActionsVariableVisibility visibility;

final Uri? selectedRepositoriesUrl;

Map<String, dynamic> toJson() { return {
  'name': name,
  'value': value,
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'visibility': visibility.toJson(),
  if (selectedRepositoriesUrl != null) 'selected_repositories_url': selectedRepositoriesUrl?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('value') && json['value'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('visibility'); } 
OrganizationActionsVariable copyWith({String? name, String? value, DateTime? createdAt, DateTime? updatedAt, OrganizationActionsVariableVisibility? visibility, Uri Function()? selectedRepositoriesUrl, }) { return OrganizationActionsVariable(
  name: name ?? this.name,
  value: value ?? this.value,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  visibility: visibility ?? this.visibility,
  selectedRepositoriesUrl: selectedRepositoriesUrl != null ? selectedRepositoriesUrl() : this.selectedRepositoriesUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrganizationActionsVariable &&
          name == other.name &&
          value == other.value &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          visibility == other.visibility &&
          selectedRepositoriesUrl == other.selectedRepositoriesUrl; } 
@override int get hashCode { return Object.hash(name, value, createdAt, updatedAt, visibility, selectedRepositoriesUrl); } 
@override String toString() { return 'OrganizationActionsVariable(name: $name, value: $value, createdAt: $createdAt, updatedAt: $updatedAt, visibility: $visibility, selectedRepositoriesUrl: $selectedRepositoriesUrl)'; } 
 }
