// GENERATED CODE - DO NOT MODIFY BY HAND

/// The policy that controls whether self-hosted runners can be used in the organization
final class ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories {const ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories._(this.value);

factory ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories.fromJson(String json) { return switch (json) {
  'all' => all,
  'selected' => selected,
  'none' => none,
  _ => ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories._(json),
}; }

static const ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories all = ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories._('all');

static const ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories selected = ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories._('selected');

static const ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories none = ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories._('none');

static const List<ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories> values = [all, selected, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories($value)'; } 
 }
final class ActionsSetSelfHostedRunnersPermissionsOrganizationRequest {const ActionsSetSelfHostedRunnersPermissionsOrganizationRequest({required this.enabledRepositories});

factory ActionsSetSelfHostedRunnersPermissionsOrganizationRequest.fromJson(Map<String, dynamic> json) { return ActionsSetSelfHostedRunnersPermissionsOrganizationRequest(
  enabledRepositories: ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories.fromJson(json['enabled_repositories'] as String),
); }

/// The policy that controls whether self-hosted runners can be used in the organization
final ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories enabledRepositories;

Map<String, dynamic> toJson() { return {
  'enabled_repositories': enabledRepositories.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled_repositories'); } 
ActionsSetSelfHostedRunnersPermissionsOrganizationRequest copyWith({ActionsSetSelfHostedRunnersPermissionsOrganizationRequestEnabledRepositories? enabledRepositories}) { return ActionsSetSelfHostedRunnersPermissionsOrganizationRequest(
  enabledRepositories: enabledRepositories ?? this.enabledRepositories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsSetSelfHostedRunnersPermissionsOrganizationRequest &&
          enabledRepositories == other.enabledRepositories; } 
@override int get hashCode { return enabledRepositories.hashCode; } 
@override String toString() { return 'ActionsSetSelfHostedRunnersPermissionsOrganizationRequest(enabledRepositories: $enabledRepositories)'; } 
 }
