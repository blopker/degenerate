// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'alert_created_at.dart';import 'alert_dismissed_at.dart';import 'alert_fixed_at.dart';import 'alert_html_url.dart';import 'alert_instances_url.dart';import 'alert_number.dart';import 'alert_updated_at.dart';import 'alert_url.dart';import 'code_scanning_alert_dismissed_comment.dart';import 'code_scanning_alert_dismissed_reason.dart';import 'code_scanning_alert_instance.dart';import 'code_scanning_alert_rule_summary.dart';import 'code_scanning_alert_state.dart';import 'code_scanning_analysis_tool.dart';import 'simple_repository.dart';import 'simple_user.dart';@immutable final class CodeScanningOrganizationAlertItems {const CodeScanningOrganizationAlertItems({required this.number, required this.createdAt, required this.url, required this.htmlUrl, required this.instancesUrl, required this.state, required this.dismissedBy, required this.dismissedAt, required this.dismissedReason, required this.rule, required this.tool, required this.mostRecentInstance, required this.repository, this.updatedAt, this.fixedAt = const Omittable.absent(), this.dismissedComment = const Omittable.absent(), this.dismissalApprovedBy = const Omittable.absent(), this.assignees, });

factory CodeScanningOrganizationAlertItems.fromJson(Map<String, dynamic> json) { return CodeScanningOrganizationAlertItems(
  number: AlertNumber.fromJson(json['number'] as num),
  createdAt: AlertCreatedAt.fromJson(json['created_at'] as String),
  updatedAt: json['updated_at'] != null ? AlertUpdatedAt.fromJson(json['updated_at'] as String) : null,
  url: AlertUrl.fromJson(json['url'] as String),
  htmlUrl: AlertHtmlUrl.fromJson(json['html_url'] as String),
  instancesUrl: AlertInstancesUrl.fromJson(json['instances_url'] as String),
  state: json['state'] != null ? CodeScanningAlertState.fromJson(json['state'] as String) : null,
  fixedAt: json.containsKey('fixed_at') ? Omittable(json['fixed_at'] != null ? AlertFixedAt.fromJson(json['fixed_at'] as String) : null) : const Omittable.absent(),
  dismissedBy: json['dismissed_by'] != null ? SimpleUser.fromJson(json['dismissed_by'] as Map<String, dynamic>) : null,
  dismissedAt: json['dismissed_at'] != null ? AlertDismissedAt.fromJson(json['dismissed_at'] as String) : null,
  dismissedReason: json['dismissed_reason'] != null ? CodeScanningAlertDismissedReason.fromJson(json['dismissed_reason'] as String) : null,
  dismissedComment: json.containsKey('dismissed_comment') ? Omittable(json['dismissed_comment'] != null ? CodeScanningAlertDismissedComment.fromJson(json['dismissed_comment'] as String) : null) : const Omittable.absent(),
  rule: CodeScanningAlertRuleSummary.fromJson(json['rule'] as Map<String, dynamic>),
  tool: CodeScanningAnalysisTool.fromJson(json['tool'] as Map<String, dynamic>),
  mostRecentInstance: CodeScanningAlertInstance.fromJson(json['most_recent_instance'] as Map<String, dynamic>),
  repository: SimpleRepository.fromJson(json['repository'] as Map<String, dynamic>),
  dismissalApprovedBy: json.containsKey('dismissal_approved_by') ? Omittable(json['dismissal_approved_by'] != null ? SimpleUser.fromJson(json['dismissal_approved_by'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The security alert number.
final AlertNumber number;

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final AlertCreatedAt createdAt;

/// The time that the alert was last updated in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final AlertUpdatedAt? updatedAt;

/// The REST API URL of the alert resource.
final AlertUrl url;

/// The GitHub URL of the alert resource.
final AlertHtmlUrl htmlUrl;

/// The REST API URL for fetching the list of instances for an alert.
final AlertInstancesUrl instancesUrl;

/// State of a code scanning alert.
final CodeScanningAlertState? state;

/// The time that the alert was no longer detected and was considered fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final Omittable<AlertFixedAt?> fixedAt;

final SimpleUser? dismissedBy;

/// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final AlertDismissedAt? dismissedAt;

/// **Required when the state is dismissed.** The reason for dismissing or closing the alert.
final CodeScanningAlertDismissedReason? dismissedReason;

/// The dismissal comment associated with the dismissal of the alert.
final Omittable<CodeScanningAlertDismissedComment?> dismissedComment;

final CodeScanningAlertRuleSummary rule;

final CodeScanningAnalysisTool tool;

final CodeScanningAlertInstance mostRecentInstance;

final SimpleRepository repository;

final Omittable<SimpleUser?> dismissalApprovedBy;

final List<SimpleUser>? assignees;

Map<String, dynamic> toJson() { return {
  'number': number.toJson(),
  'created_at': createdAt.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  'url': url.toJson(),
  'html_url': htmlUrl.toJson(),
  'instances_url': instancesUrl.toJson(),
  'state': state?.toJson(),
  if (fixedAt.isPresent) 'fixed_at': fixedAt.value?.toJson(),
  'dismissed_by': dismissedBy?.toJson(),
  'dismissed_at': dismissedAt?.toJson(),
  'dismissed_reason': dismissedReason?.toJson(),
  if (dismissedComment.isPresent) 'dismissed_comment': dismissedComment.value?.toJson(),
  'rule': rule.toJson(),
  'tool': tool.toJson(),
  'most_recent_instance': mostRecentInstance.toJson(),
  'repository': repository.toJson(),
  if (dismissalApprovedBy.isPresent) 'dismissal_approved_by': dismissalApprovedBy.value?.toJson(),
  if (assignees != null) 'assignees': assignees?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('number') &&
      json.containsKey('created_at') &&
      json.containsKey('url') &&
      json.containsKey('html_url') &&
      json.containsKey('instances_url') &&
      json.containsKey('state') &&
      json.containsKey('dismissed_by') &&
      json.containsKey('dismissed_at') &&
      json.containsKey('dismissed_reason') &&
      json.containsKey('rule') &&
      json.containsKey('tool') &&
      json.containsKey('most_recent_instance') &&
      json.containsKey('repository'); } 
CodeScanningOrganizationAlertItems copyWith({AlertNumber? number, AlertCreatedAt? createdAt, AlertUpdatedAt? Function()? updatedAt, AlertUrl? url, AlertHtmlUrl? htmlUrl, AlertInstancesUrl? instancesUrl, CodeScanningAlertState? Function()? state, Omittable<AlertFixedAt?>? fixedAt, SimpleUser? Function()? dismissedBy, AlertDismissedAt? Function()? dismissedAt, CodeScanningAlertDismissedReason? Function()? dismissedReason, Omittable<CodeScanningAlertDismissedComment?>? dismissedComment, CodeScanningAlertRuleSummary? rule, CodeScanningAnalysisTool? tool, CodeScanningAlertInstance? mostRecentInstance, SimpleRepository? repository, Omittable<SimpleUser?>? dismissalApprovedBy, List<SimpleUser>? Function()? assignees, }) { return CodeScanningOrganizationAlertItems(
  number: number ?? this.number,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  url: url ?? this.url,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  instancesUrl: instancesUrl ?? this.instancesUrl,
  state: state != null ? state() : this.state,
  fixedAt: fixedAt ?? this.fixedAt,
  dismissedBy: dismissedBy != null ? dismissedBy() : this.dismissedBy,
  dismissedAt: dismissedAt != null ? dismissedAt() : this.dismissedAt,
  dismissedReason: dismissedReason != null ? dismissedReason() : this.dismissedReason,
  dismissedComment: dismissedComment ?? this.dismissedComment,
  rule: rule ?? this.rule,
  tool: tool ?? this.tool,
  mostRecentInstance: mostRecentInstance ?? this.mostRecentInstance,
  repository: repository ?? this.repository,
  dismissalApprovedBy: dismissalApprovedBy ?? this.dismissalApprovedBy,
  assignees: assignees != null ? assignees() : this.assignees,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningOrganizationAlertItems &&
          number == other.number &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          htmlUrl == other.htmlUrl &&
          instancesUrl == other.instancesUrl &&
          state == other.state &&
          fixedAt == other.fixedAt &&
          dismissedBy == other.dismissedBy &&
          dismissedAt == other.dismissedAt &&
          dismissedReason == other.dismissedReason &&
          dismissedComment == other.dismissedComment &&
          rule == other.rule &&
          tool == other.tool &&
          mostRecentInstance == other.mostRecentInstance &&
          repository == other.repository &&
          dismissalApprovedBy == other.dismissalApprovedBy &&
          listEquals(assignees, other.assignees); } 
@override int get hashCode { return Object.hash(number, createdAt, updatedAt, url, htmlUrl, instancesUrl, state, fixedAt, dismissedBy, dismissedAt, dismissedReason, dismissedComment, rule, tool, mostRecentInstance, repository, dismissalApprovedBy, Object.hashAll(assignees ?? const [])); } 
@override String toString() { return 'CodeScanningOrganizationAlertItems(number: $number, createdAt: $createdAt, updatedAt: $updatedAt, url: $url, htmlUrl: $htmlUrl, instancesUrl: $instancesUrl, state: $state, fixedAt: $fixedAt, dismissedBy: $dismissedBy, dismissedAt: $dismissedAt, dismissedReason: $dismissedReason, dismissedComment: $dismissedComment, rule: $rule, tool: $tool, mostRecentInstance: $mostRecentInstance, repository: $repository, dismissalApprovedBy: $dismissalApprovedBy, assignees: $assignees)'; } 
 }
