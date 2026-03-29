// GENERATED CODE - DO NOT MODIFY BY HAND

/// The payload used to update the organization settings.
final class AuditLogOrganizationUpdatedChangesRequested {const AuditLogOrganizationUpdatedChangesRequested({this.title, this.description, this.name, this.threadsUiVisibility, this.usageDashboardVisibility, this.apiCallLogging, this.apiCallLoggingProjectIds, });

factory AuditLogOrganizationUpdatedChangesRequested.fromJson(Map<String, dynamic> json) { return AuditLogOrganizationUpdatedChangesRequested(
  title: json['title'] as String?,
  description: json['description'] as String?,
  name: json['name'] as String?,
  threadsUiVisibility: json['threads_ui_visibility'] as String?,
  usageDashboardVisibility: json['usage_dashboard_visibility'] as String?,
  apiCallLogging: json['api_call_logging'] as String?,
  apiCallLoggingProjectIds: json['api_call_logging_project_ids'] as String?,
); }

/// The organization title.
final String? title;

/// The organization description.
final String? description;

/// The organization name.
final String? name;

/// Visibility of the threads page which shows messages created with the Assistants API and Playground. One of `ANY_ROLE`, `OWNERS`, or `NONE`.
final String? threadsUiVisibility;

/// Visibility of the usage dashboard which shows activity and costs for your organization. One of `ANY_ROLE` or `OWNERS`.
final String? usageDashboardVisibility;

/// How your organization logs data from supported API calls. One of `disabled`, `enabled_per_call`, `enabled_for_all_projects`, or `enabled_for_selected_projects`
final String? apiCallLogging;

/// The list of project ids if api_call_logging is set to `enabled_for_selected_projects`
final String? apiCallLoggingProjectIds;

Map<String, dynamic> toJson() { return {
  'title': ?title,
  'description': ?description,
  'name': ?name,
  'threads_ui_visibility': ?threadsUiVisibility,
  'usage_dashboard_visibility': ?usageDashboardVisibility,
  'api_call_logging': ?apiCallLogging,
  'api_call_logging_project_ids': ?apiCallLoggingProjectIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AuditLogOrganizationUpdatedChangesRequested copyWith({String Function()? title, String Function()? description, String Function()? name, String Function()? threadsUiVisibility, String Function()? usageDashboardVisibility, String Function()? apiCallLogging, String Function()? apiCallLoggingProjectIds, }) { return AuditLogOrganizationUpdatedChangesRequested(
  title: title != null ? title() : this.title,
  description: description != null ? description() : this.description,
  name: name != null ? name() : this.name,
  threadsUiVisibility: threadsUiVisibility != null ? threadsUiVisibility() : this.threadsUiVisibility,
  usageDashboardVisibility: usageDashboardVisibility != null ? usageDashboardVisibility() : this.usageDashboardVisibility,
  apiCallLogging: apiCallLogging != null ? apiCallLogging() : this.apiCallLogging,
  apiCallLoggingProjectIds: apiCallLoggingProjectIds != null ? apiCallLoggingProjectIds() : this.apiCallLoggingProjectIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogOrganizationUpdatedChangesRequested &&
          title == other.title &&
          description == other.description &&
          name == other.name &&
          threadsUiVisibility == other.threadsUiVisibility &&
          usageDashboardVisibility == other.usageDashboardVisibility &&
          apiCallLogging == other.apiCallLogging &&
          apiCallLoggingProjectIds == other.apiCallLoggingProjectIds; } 
@override int get hashCode { return Object.hash(title, description, name, threadsUiVisibility, usageDashboardVisibility, apiCallLogging, apiCallLoggingProjectIds); } 
@override String toString() { return 'AuditLogOrganizationUpdatedChangesRequested(title: $title, description: $description, name: $name, threadsUiVisibility: $threadsUiVisibility, usageDashboardVisibility: $usageDashboardVisibility, apiCallLogging: $apiCallLogging, apiCallLoggingProjectIds: $apiCallLoggingProjectIds)'; } 
 }
