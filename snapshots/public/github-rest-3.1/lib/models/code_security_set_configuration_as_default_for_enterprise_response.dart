// GENERATED CODE - DO NOT MODIFY BY HAND

import 'code_security_configuration.dart';/// Specifies which types of repository this security configuration is applied to by default.
final class CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos {const CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos._(this.value);

factory CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos.fromJson(String json) { return switch (json) {
  'all' => all,
  'none' => none,
  'private_and_internal' => privateAndInternal,
  'public' => public,
  _ => CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos._(json),
}; }

static const CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos all = CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos._('all');

static const CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos none = CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos._('none');

static const CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos privateAndInternal = CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos._('private_and_internal');

static const CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos public = CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos._('public');

static const List<CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos> values = [all, none, privateAndInternal, public];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos($value)'; } 
 }
final class CodeSecuritySetConfigurationAsDefaultForEnterpriseResponse {const CodeSecuritySetConfigurationAsDefaultForEnterpriseResponse({this.defaultForNewRepos, this.configuration, });

factory CodeSecuritySetConfigurationAsDefaultForEnterpriseResponse.fromJson(Map<String, dynamic> json) { return CodeSecuritySetConfigurationAsDefaultForEnterpriseResponse(
  defaultForNewRepos: json['default_for_new_repos'] != null ? CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos.fromJson(json['default_for_new_repos'] as String) : null,
  configuration: json['configuration'] != null ? CodeSecurityConfiguration.fromJson(json['configuration'] as Map<String, dynamic>) : null,
); }

/// Specifies which types of repository this security configuration is applied to by default.
final CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos? defaultForNewRepos;

final CodeSecurityConfiguration? configuration;

Map<String, dynamic> toJson() { return {
  if (defaultForNewRepos != null) 'default_for_new_repos': defaultForNewRepos?.toJson(),
  if (configuration != null) 'configuration': configuration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_for_new_repos', 'configuration'}.contains(key)); } 
CodeSecuritySetConfigurationAsDefaultForEnterpriseResponse copyWith({CodeSecuritySetConfigurationAsDefaultForEnterpriseResponseDefaultForNewRepos Function()? defaultForNewRepos, CodeSecurityConfiguration Function()? configuration, }) { return CodeSecuritySetConfigurationAsDefaultForEnterpriseResponse(
  defaultForNewRepos: defaultForNewRepos != null ? defaultForNewRepos() : this.defaultForNewRepos,
  configuration: configuration != null ? configuration() : this.configuration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecuritySetConfigurationAsDefaultForEnterpriseResponse &&
          defaultForNewRepos == other.defaultForNewRepos &&
          configuration == other.configuration; } 
@override int get hashCode { return Object.hash(defaultForNewRepos, configuration); } 
@override String toString() { return 'CodeSecuritySetConfigurationAsDefaultForEnterpriseResponse(defaultForNewRepos: $defaultForNewRepos, configuration: $configuration)'; } 
 }
