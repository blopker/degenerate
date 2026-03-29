// GENERATED CODE - DO NOT MODIFY BY HAND

/// The type of repositories to attach the configuration to.
final class CodeSecurityAttachEnterpriseConfigurationRequestScope {const CodeSecurityAttachEnterpriseConfigurationRequestScope._(this.value);

factory CodeSecurityAttachEnterpriseConfigurationRequestScope.fromJson(String json) { return switch (json) {
  'all' => all,
  'all_without_configurations' => allWithoutConfigurations,
  _ => CodeSecurityAttachEnterpriseConfigurationRequestScope._(json),
}; }

static const CodeSecurityAttachEnterpriseConfigurationRequestScope all = CodeSecurityAttachEnterpriseConfigurationRequestScope._('all');

static const CodeSecurityAttachEnterpriseConfigurationRequestScope allWithoutConfigurations = CodeSecurityAttachEnterpriseConfigurationRequestScope._('all_without_configurations');

static const List<CodeSecurityAttachEnterpriseConfigurationRequestScope> values = [all, allWithoutConfigurations];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityAttachEnterpriseConfigurationRequestScope && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityAttachEnterpriseConfigurationRequestScope($value)'; } 
 }
final class CodeSecurityAttachEnterpriseConfigurationRequest {const CodeSecurityAttachEnterpriseConfigurationRequest({required this.scope});

factory CodeSecurityAttachEnterpriseConfigurationRequest.fromJson(Map<String, dynamic> json) { return CodeSecurityAttachEnterpriseConfigurationRequest(
  scope: CodeSecurityAttachEnterpriseConfigurationRequestScope.fromJson(json['scope'] as String),
); }

/// The type of repositories to attach the configuration to.
final CodeSecurityAttachEnterpriseConfigurationRequestScope scope;

Map<String, dynamic> toJson() { return {
  'scope': scope.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('scope'); } 
CodeSecurityAttachEnterpriseConfigurationRequest copyWith({CodeSecurityAttachEnterpriseConfigurationRequestScope? scope}) { return CodeSecurityAttachEnterpriseConfigurationRequest(
  scope: scope ?? this.scope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityAttachEnterpriseConfigurationRequest &&
          scope == other.scope; } 
@override int get hashCode { return scope.hashCode; } 
@override String toString() { return 'CodeSecurityAttachEnterpriseConfigurationRequest(scope: $scope)'; } 
 }
