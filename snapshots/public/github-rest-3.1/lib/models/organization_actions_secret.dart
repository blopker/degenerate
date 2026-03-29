// GENERATED CODE - DO NOT MODIFY BY HAND

/// Visibility of a secret
final class OrganizationActionsSecretVisibility {const OrganizationActionsSecretVisibility._(this.value);

factory OrganizationActionsSecretVisibility.fromJson(String json) { return switch (json) {
  'all' => all,
  'private' => private,
  'selected' => selected,
  _ => OrganizationActionsSecretVisibility._(json),
}; }

static const OrganizationActionsSecretVisibility all = OrganizationActionsSecretVisibility._('all');

static const OrganizationActionsSecretVisibility private = OrganizationActionsSecretVisibility._('private');

static const OrganizationActionsSecretVisibility selected = OrganizationActionsSecretVisibility._('selected');

static const List<OrganizationActionsSecretVisibility> values = [all, private, selected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrganizationActionsSecretVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrganizationActionsSecretVisibility($value)'; } 
 }
/// Secrets for GitHub Actions for an organization.
final class OrganizationActionsSecret {const OrganizationActionsSecret({required this.name, required this.createdAt, required this.updatedAt, required this.visibility, this.selectedRepositoriesUrl, });

factory OrganizationActionsSecret.fromJson(Map<String, dynamic> json) { return OrganizationActionsSecret(
  name: json['name'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  visibility: OrganizationActionsSecretVisibility.fromJson(json['visibility'] as String),
  selectedRepositoriesUrl: json['selected_repositories_url'] != null ? Uri.parse(json['selected_repositories_url'] as String) : null,
); }

/// The name of the secret.
final String name;

final DateTime createdAt;

final DateTime updatedAt;

/// Visibility of a secret
final OrganizationActionsSecretVisibility visibility;

final Uri? selectedRepositoriesUrl;

Map<String, dynamic> toJson() { return {
  'name': name,
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'visibility': visibility.toJson(),
  if (selectedRepositoriesUrl != null) 'selected_repositories_url': selectedRepositoriesUrl?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('visibility'); } 
OrganizationActionsSecret copyWith({String? name, DateTime? createdAt, DateTime? updatedAt, OrganizationActionsSecretVisibility? visibility, Uri Function()? selectedRepositoriesUrl, }) { return OrganizationActionsSecret(
  name: name ?? this.name,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  visibility: visibility ?? this.visibility,
  selectedRepositoriesUrl: selectedRepositoriesUrl != null ? selectedRepositoriesUrl() : this.selectedRepositoriesUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrganizationActionsSecret &&
          name == other.name &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          visibility == other.visibility &&
          selectedRepositoriesUrl == other.selectedRepositoriesUrl; } 
@override int get hashCode { return Object.hash(name, createdAt, updatedAt, visibility, selectedRepositoriesUrl); } 
@override String toString() { return 'OrganizationActionsSecret(name: $name, createdAt: $createdAt, updatedAt: $updatedAt, visibility: $visibility, selectedRepositoriesUrl: $selectedRepositoriesUrl)'; } 
 }
