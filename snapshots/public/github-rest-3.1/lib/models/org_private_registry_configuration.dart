// GENERATED CODE - DO NOT MODIFY BY HAND

/// The registry type.
final class OrgPrivateRegistryConfigurationRegistryType {const OrgPrivateRegistryConfigurationRegistryType._(this.value);

factory OrgPrivateRegistryConfigurationRegistryType.fromJson(String json) { return switch (json) {
  'maven_repository' => mavenRepository,
  'nuget_feed' => nugetFeed,
  'goproxy_server' => goproxyServer,
  'npm_registry' => npmRegistry,
  'rubygems_server' => rubygemsServer,
  'cargo_registry' => cargoRegistry,
  'composer_repository' => composerRepository,
  'docker_registry' => dockerRegistry,
  'git_source' => gitSource,
  'helm_registry' => helmRegistry,
  'hex_organization' => hexOrganization,
  'hex_repository' => hexRepository,
  'pub_repository' => pubRepository,
  'python_index' => pythonIndex,
  'terraform_registry' => terraformRegistry,
  _ => OrgPrivateRegistryConfigurationRegistryType._(json),
}; }

static const OrgPrivateRegistryConfigurationRegistryType mavenRepository = OrgPrivateRegistryConfigurationRegistryType._('maven_repository');

static const OrgPrivateRegistryConfigurationRegistryType nugetFeed = OrgPrivateRegistryConfigurationRegistryType._('nuget_feed');

static const OrgPrivateRegistryConfigurationRegistryType goproxyServer = OrgPrivateRegistryConfigurationRegistryType._('goproxy_server');

static const OrgPrivateRegistryConfigurationRegistryType npmRegistry = OrgPrivateRegistryConfigurationRegistryType._('npm_registry');

static const OrgPrivateRegistryConfigurationRegistryType rubygemsServer = OrgPrivateRegistryConfigurationRegistryType._('rubygems_server');

static const OrgPrivateRegistryConfigurationRegistryType cargoRegistry = OrgPrivateRegistryConfigurationRegistryType._('cargo_registry');

static const OrgPrivateRegistryConfigurationRegistryType composerRepository = OrgPrivateRegistryConfigurationRegistryType._('composer_repository');

static const OrgPrivateRegistryConfigurationRegistryType dockerRegistry = OrgPrivateRegistryConfigurationRegistryType._('docker_registry');

static const OrgPrivateRegistryConfigurationRegistryType gitSource = OrgPrivateRegistryConfigurationRegistryType._('git_source');

static const OrgPrivateRegistryConfigurationRegistryType helmRegistry = OrgPrivateRegistryConfigurationRegistryType._('helm_registry');

static const OrgPrivateRegistryConfigurationRegistryType hexOrganization = OrgPrivateRegistryConfigurationRegistryType._('hex_organization');

static const OrgPrivateRegistryConfigurationRegistryType hexRepository = OrgPrivateRegistryConfigurationRegistryType._('hex_repository');

static const OrgPrivateRegistryConfigurationRegistryType pubRepository = OrgPrivateRegistryConfigurationRegistryType._('pub_repository');

static const OrgPrivateRegistryConfigurationRegistryType pythonIndex = OrgPrivateRegistryConfigurationRegistryType._('python_index');

static const OrgPrivateRegistryConfigurationRegistryType terraformRegistry = OrgPrivateRegistryConfigurationRegistryType._('terraform_registry');

static const List<OrgPrivateRegistryConfigurationRegistryType> values = [mavenRepository, nugetFeed, goproxyServer, npmRegistry, rubygemsServer, cargoRegistry, composerRepository, dockerRegistry, gitSource, helmRegistry, hexOrganization, hexRepository, pubRepository, pythonIndex, terraformRegistry];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgPrivateRegistryConfigurationRegistryType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgPrivateRegistryConfigurationRegistryType($value)'; } 
 }
/// Which type of organization repositories have access to the private registry.
final class OrgPrivateRegistryConfigurationVisibility {const OrgPrivateRegistryConfigurationVisibility._(this.value);

factory OrgPrivateRegistryConfigurationVisibility.fromJson(String json) { return switch (json) {
  'all' => all,
  'private' => private,
  'selected' => selected,
  _ => OrgPrivateRegistryConfigurationVisibility._(json),
}; }

static const OrgPrivateRegistryConfigurationVisibility all = OrgPrivateRegistryConfigurationVisibility._('all');

static const OrgPrivateRegistryConfigurationVisibility private = OrgPrivateRegistryConfigurationVisibility._('private');

static const OrgPrivateRegistryConfigurationVisibility selected = OrgPrivateRegistryConfigurationVisibility._('selected');

static const List<OrgPrivateRegistryConfigurationVisibility> values = [all, private, selected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgPrivateRegistryConfigurationVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgPrivateRegistryConfigurationVisibility($value)'; } 
 }
/// Private registry configuration for an organization
final class OrgPrivateRegistryConfiguration {const OrgPrivateRegistryConfiguration({required this.name, required this.registryType, this.url, this.username, this.replacesBase = false, required this.visibility, required this.createdAt, required this.updatedAt, });

factory OrgPrivateRegistryConfiguration.fromJson(Map<String, dynamic> json) { return OrgPrivateRegistryConfiguration(
  name: json['name'] as String,
  registryType: OrgPrivateRegistryConfigurationRegistryType.fromJson(json['registry_type'] as String),
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
  username: json['username'] as String?,
  replacesBase: json.containsKey('replaces_base') ? json['replaces_base'] as bool : false,
  visibility: OrgPrivateRegistryConfigurationVisibility.fromJson(json['visibility'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

/// The name of the private registry configuration.
final String name;

/// The registry type.
final OrgPrivateRegistryConfigurationRegistryType registryType;

/// The URL of the private registry.
final Uri? url;

/// The username to use when authenticating with the private registry.
final String? username;

/// Whether this private registry replaces the base registry (e.g., npmjs.org for npm, rubygems.org for rubygems). When `true`, Dependabot will only use this registry and will not fall back to the public registry. When `false` (default), Dependabot will use this registry for scoped packages but may fall back to the public registry for other packages.
final bool replacesBase;

/// Which type of organization repositories have access to the private registry.
final OrgPrivateRegistryConfigurationVisibility visibility;

final DateTime createdAt;

final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'name': name,
  'registry_type': registryType.toJson(),
  if (url != null) 'url': url?.toString(),
  'username': ?username,
  'replaces_base': replacesBase,
  'visibility': visibility.toJson(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('registry_type') &&
      json.containsKey('visibility') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
OrgPrivateRegistryConfiguration copyWith({String? name, OrgPrivateRegistryConfigurationRegistryType? registryType, Uri Function()? url, String? Function()? username, bool Function()? replacesBase, OrgPrivateRegistryConfigurationVisibility? visibility, DateTime? createdAt, DateTime? updatedAt, }) { return OrgPrivateRegistryConfiguration(
  name: name ?? this.name,
  registryType: registryType ?? this.registryType,
  url: url != null ? url() : this.url,
  username: username != null ? username() : this.username,
  replacesBase: replacesBase != null ? replacesBase() : this.replacesBase,
  visibility: visibility ?? this.visibility,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgPrivateRegistryConfiguration &&
          name == other.name &&
          registryType == other.registryType &&
          url == other.url &&
          username == other.username &&
          replacesBase == other.replacesBase &&
          visibility == other.visibility &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(name, registryType, url, username, replacesBase, visibility, createdAt, updatedAt); } 
@override String toString() { return 'OrgPrivateRegistryConfiguration(name: $name, registryType: $registryType, url: $url, username: $username, replacesBase: $replacesBase, visibility: $visibility, createdAt: $createdAt, updatedAt: $updatedAt)'; } 
 }
