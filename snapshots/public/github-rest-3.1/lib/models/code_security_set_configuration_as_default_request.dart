// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specify which types of repository this security configuration should be applied to by default.
final class CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos {const CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos._(this.value);

factory CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos.fromJson(String json) { return switch (json) {
  'all' => all,
  'none' => none,
  'private_and_internal' => privateAndInternal,
  'public' => public,
  _ => CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos._(json),
}; }

static const CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos all = CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos._('all');

static const CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos none = CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos._('none');

static const CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos privateAndInternal = CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos._('private_and_internal');

static const CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos public = CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos._('public');

static const List<CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos> values = [all, none, privateAndInternal, public];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos($value)'; } 
 }
final class CodeSecuritySetConfigurationAsDefaultRequest {const CodeSecuritySetConfigurationAsDefaultRequest({this.defaultForNewRepos});

factory CodeSecuritySetConfigurationAsDefaultRequest.fromJson(Map<String, dynamic> json) { return CodeSecuritySetConfigurationAsDefaultRequest(
  defaultForNewRepos: json['default_for_new_repos'] != null ? CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos.fromJson(json['default_for_new_repos'] as String) : null,
); }

/// Specify which types of repository this security configuration should be applied to by default.
final CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos? defaultForNewRepos;

Map<String, dynamic> toJson() { return {
  if (defaultForNewRepos != null) 'default_for_new_repos': defaultForNewRepos?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_for_new_repos'}.contains(key)); } 
CodeSecuritySetConfigurationAsDefaultRequest copyWith({CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos Function()? defaultForNewRepos}) { return CodeSecuritySetConfigurationAsDefaultRequest(
  defaultForNewRepos: defaultForNewRepos != null ? defaultForNewRepos() : this.defaultForNewRepos,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecuritySetConfigurationAsDefaultRequest &&
          defaultForNewRepos == other.defaultForNewRepos; } 
@override int get hashCode { return defaultForNewRepos.hashCode; } 
@override String toString() { return 'CodeSecuritySetConfigurationAsDefaultRequest(defaultForNewRepos: $defaultForNewRepos)'; } 
 }
